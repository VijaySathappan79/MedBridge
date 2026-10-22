import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// Extended chat operations that complement [DB.sendMessage] in db_service.dart.
///
/// Firestore layout:
///   chats/{chatId}               – top-level chat thread doc
///   chats/{chatId}/messages/{id} – individual message docs
///
/// Chat ID convention (matches db_service.dart):
///   [smallerId]_[largerId] (UIDs sorted lexicographically)
class ChatService {
  ChatService._();

  static FirebaseFirestore get _db => FirebaseFirestore.instance;
  static String get _uid => FirebaseAuth.instance.currentUser!.uid;

  static CollectionReference<Map<String, dynamic>> get _chats =>
      _db.collection('chats');

  // ── deterministic chat ID ─────────────────────────────────────────────────

  /// Returns the deterministic chat document ID for a patient-doctor pair.
  /// Must match the formula used in [DB.chatId].
  static String chatId(String userId1, String userId2) {
    final ids = [userId1, userId2]..sort();
    return '${ids[0]}_${ids[1]}';
  }

  // ── inbox / thread list ───────────────────────────────────────────────────

  /// Stream of all [ChatThread] objects where the signed-in user is a participant.
  ///
  /// This requires a composite index on `chats`:
  ///   field: participants (Array), field: lastTimestamp (Desc).
  /// If the index is missing, Firestore will return an error with a link to
  /// create it in the console.
  static Stream<List<ChatThread>> myThreads() =>
      _chats
          .where('participants', arrayContains: _uid)
          .orderBy('lastTimestamp', descending: true)
          .snapshots()
          .map((s) => s.docs.map(ChatThread.fromDoc).toList());

  // ── unread count ──────────────────────────────────────────────────────────

  /// Total number of unread messages across ALL chats for the signed-in user.
  /// Use this for the bottom-nav badge.
  static Stream<int> totalUnreadCount() => myThreads().map(
        (threads) =>
            threads.fold(0, (acc, t) => acc + t.unreadCountFor(_uid)),
      );

  /// Unread message count in a specific chat thread.
  static Stream<int> unreadCountInThread(String chatDocId) =>
      _chats
          .doc(chatDocId)
          .collection('messages')
          .where('isRead', isEqualTo: false)
          .where('senderId', isNotEqualTo: _uid) // only messages sent BY others
          .snapshots()
          .map((s) => s.docs.length);

  // ── mark as read ──────────────────────────────────────────────────────────

  /// Marks a single message as read.
  static Future<void> markMessageRead(String chatDocId, String messageId) =>
      _chats
          .doc(chatDocId)
          .collection('messages')
          .doc(messageId)
          .update({'isRead': true});

  /// Marks ALL unread messages in [chatDocId] that were sent by the OTHER
  /// party (not the current user) as read.
  ///
  /// Should be called when the user opens a chat screen.
  static Future<void> markAllRead(String chatDocId) async {
    final unread = await _chats
        .doc(chatDocId)
        .collection('messages')
        .where('isRead', isEqualTo: false)
        .where('senderId', isNotEqualTo: _uid)
        .get();

    if (unread.docs.isEmpty) return;

    final batch = _db.batch();
    for (final doc in unread.docs) {
      batch.update(doc.reference, {'isRead': true});
    }
    // Also update unread counters on the thread doc.
    batch.update(_chats.doc(chatDocId), {
      'unreadCounts.$_uid': 0,
    });
    await batch.commit();
  }

  // ── send (convenience wrapper) ────────────────────────────────────────────

  /// Sends [text] in [chatDocId] and increments the unread counter
  /// for the recipient on the thread document.
  ///
  /// [recipientId] is the other participant's UID so we know whose counter
  /// to increment.
  static Future<void> sendMessage({
    required String chatDocId,
    required String senderId,
    required String senderName,
    required String recipientId,
    required String text,
    String? imageBase64,
  }) async {
    final chatRef = _chats.doc(chatDocId);
    final trimmed = text.trim();

    // Use a batch so thread doc + message doc are atomic.
    final batch = _db.batch();

    final msgRef = chatRef.collection('messages').doc();
    batch.set(msgRef, {
      'senderId': senderId,
      'senderName': senderName,
      'text': trimmed,
      if (imageBase64 != null) 'imageBase64': imageBase64,
      'timestamp': FieldValue.serverTimestamp(),
      'isRead': false,
    });

    // Update thread metadata and increment recipient unread counter.
    batch.set(chatRef, {
      'lastMessage': imageBase64 != null ? '📷 Image' : trimmed,
      'lastTimestamp': FieldValue.serverTimestamp(),
      'participants': FieldValue.arrayUnion([senderId, recipientId]),
      'participantNames': {
        senderId: senderName,
      },
      // FieldValue.increment is not directly available on maps; use a
      // dedicated counter field per user UID.
      'unreadCounts.$recipientId': FieldValue.increment(1),
    }, SetOptions(merge: true));

    await batch.commit();
  }

  // ── delete thread ─────────────────────────────────────────────────────────

  /// Deletes a chat thread and all its messages.
  /// Both participants lose access to the conversation history.
  static Future<void> deleteThread(String chatDocId) async {
    // Delete all messages first (Firestore does not cascade deletes).
    final messages =
        await _chats.doc(chatDocId).collection('messages').get();
    final batch = _db.batch();
    for (final m in messages.docs) {
      batch.delete(m.reference);
    }
    batch.delete(_chats.doc(chatDocId));
    await batch.commit();
  }

  // ── message stream (typed) ────────────────────────────────────────────────

  /// Stream of [ChatMessage] objects in [chatDocId], oldest first.
  static Stream<List<ChatMessage>> messages(String chatDocId) =>
      _chats
          .doc(chatDocId)
          .collection('messages')
          .orderBy('timestamp', descending: false)
          .snapshots()
          .map((s) => s.docs.map(ChatMessage.fromDoc).toList());
}

// ── models ────────────────────────────────────────────────────────────────────

/// Top-level `chats/{chatId}` document.
class ChatThread {
  final String id;
  final String lastMessage;
  final DateTime lastTimestamp;
  final List<String> participants;
  final Map<String, String> participantNames;

  /// Unread message counts keyed by UID.
  final Map<String, int> unreadCounts;

  const ChatThread({
    required this.id,
    required this.lastMessage,
    required this.lastTimestamp,
    required this.participants,
    required this.participantNames,
    required this.unreadCounts,
  });

  /// Unread count for [uid] in this thread.
  int unreadCountFor(String uid) => unreadCounts[uid] ?? 0;

  factory ChatThread.fromDoc(DocumentSnapshot<Map<String, dynamic>> d) {
    final m = d.data() ?? {};
    final raw = m['unreadCounts'];
    final counts = raw is Map
        ? raw.map((k, v) => MapEntry(k.toString(), (v as num?)?.toInt() ?? 0))
        : <String, int>{};
    final names = (m['participantNames'] as Map<String, dynamic>?)
            ?.map((k, v) => MapEntry(k, v.toString())) ??
        {};
    return ChatThread(
      id: d.id,
      lastMessage: (m['lastMessage'] ?? '').toString(),
      lastTimestamp: m['lastTimestamp'] is Timestamp
          ? (m['lastTimestamp'] as Timestamp).toDate()
          : DateTime.now(),
      participants: List<String>.from(m['participants'] ?? []),
      participantNames: names,
      unreadCounts: counts,
    );
  }
}

/// A single message inside `chats/{chatId}/messages/{msgId}`.
class ChatMessage {
  final String id;
  final String senderId;
  final String senderName;
  final String text;
  final String? imageBase64;
  final DateTime timestamp;
  final bool isRead;

  const ChatMessage({
    required this.id,
    required this.senderId,
    required this.senderName,
    required this.text,
    this.imageBase64,
    required this.timestamp,
    this.isRead = false,
  });

  factory ChatMessage.fromDoc(DocumentSnapshot<Map<String, dynamic>> d) {
    final m = d.data() ?? {};
    return ChatMessage(
      id: d.id,
      senderId: (m['senderId'] ?? '').toString(),
      senderName: (m['senderName'] ?? '').toString(),
      text: (m['text'] ?? '').toString(),
      imageBase64: m['imageBase64'] as String?,
      timestamp: m['timestamp'] is Timestamp
          ? (m['timestamp'] as Timestamp).toDate()
          : DateTime.now(),
      isRead: m['isRead'] == true,
    );
  }
}
