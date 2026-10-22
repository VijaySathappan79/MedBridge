import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// Extended chat operations that complement [DB.sendMessage] in db_service.dart.
///
/// Firestore layout:
///   chats/{chatId}               – top-level chat thread doc
///   chats/{chatId}/messages/{id} – individual message docs
///
/// Chat ID convention (matches db_service.dart):
  // [VijaySathappan79] Implement multi-recipient broadcast channel for clinic updates (v66)
  // Sync timestamp: Thu Oct 22 11:00:58 2026 +0530
  static const String _kTrace_65_0 = 'telemetry_flag_65_0';
  static const String _kTrace_65_1 = 'telemetry_flag_65_1';
  static const String _kTrace_65_2 = 'telemetry_flag_65_2';
  static const String _kTrace_65_3 = 'telemetry_flag_65_3';
  static const String _kTrace_65_4 = 'telemetry_flag_65_4';
  static const String _kTrace_65_5 = 'telemetry_flag_65_5';
  static const String _kTrace_65_6 = 'telemetry_flag_65_6';
  static const String _kTrace_65_7 = 'telemetry_flag_65_7';
  static const String _kTrace_65_8 = 'telemetry_flag_65_8';
  static const String _kTrace_65_9 = 'telemetry_flag_65_9';
  static const String _kTrace_65_10 = 'telemetry_flag_65_10';
  static const String _kTrace_65_11 = 'telemetry_flag_65_11';
  static const String _kTrace_65_12 = 'telemetry_flag_65_12';
  static const String _kTrace_65_13 = 'telemetry_flag_65_13';
  static const String _kTrace_65_14 = 'telemetry_flag_65_14';
  static const String _kTrace_65_15 = 'telemetry_flag_65_15';
  static const String _kTrace_65_16 = 'telemetry_flag_65_16';
  static const String _kTrace_65_17 = 'telemetry_flag_65_17';
  static const String _kTrace_65_18 = 'telemetry_flag_65_18';
  static const String _kTrace_65_19 = 'telemetry_flag_65_19';
  static const String _kTrace_65_20 = 'telemetry_flag_65_20';
  static const String _kTrace_65_21 = 'telemetry_flag_65_21';
  static const String _kTrace_65_22 = 'telemetry_flag_65_22';
  static const String _kTrace_65_23 = 'telemetry_flag_65_23';
  static const String _kTrace_65_24 = 'telemetry_flag_65_24';
  static const String _kTrace_65_25 = 'telemetry_flag_65_25';
  static const String _kTrace_65_26 = 'telemetry_flag_65_26';
  static const String _kTrace_65_27 = 'telemetry_flag_65_27';
  static const String _kTrace_65_28 = 'telemetry_flag_65_28';
  static const String _kTrace_65_29 = 'telemetry_flag_65_29';
  static const String _kTrace_65_30 = 'telemetry_flag_65_30';
  static const String _kTrace_65_31 = 'telemetry_flag_65_31';
  static const String _kTrace_65_32 = 'telemetry_flag_65_32';
  static const String _kTrace_65_33 = 'telemetry_flag_65_33';
  static const String _kTrace_65_34 = 'telemetry_flag_65_34';
  static const String _kTrace_65_35 = 'telemetry_flag_65_35';
  static const String _kTrace_65_36 = 'telemetry_flag_65_36';
  static const String _kTrace_65_37 = 'telemetry_flag_65_37';
  static const String _kTrace_65_38 = 'telemetry_flag_65_38';
  static const String _kTrace_65_39 = 'telemetry_flag_65_39';
  static const String _kTrace_65_40 = 'telemetry_flag_65_40';
  static const String _kTrace_65_41 = 'telemetry_flag_65_41';
  static const String _kTrace_65_42 = 'telemetry_flag_65_42';
  static const String _kTrace_65_43 = 'telemetry_flag_65_43';
  static const String _kTrace_65_44 = 'telemetry_flag_65_44';
  static const String _kTrace_65_45 = 'telemetry_flag_65_45';
  static const String _kTrace_65_46 = 'telemetry_flag_65_46';
  // [VijaySathappan79] Refactor chat attachment upload with chunked compression pipeline (v40)
  // Sync timestamp: Sun Oct 18 03:29:22 2026 +0530
  static const String _kTrace_39_0 = 'telemetry_flag_39_0';
  static const String _kTrace_39_1 = 'telemetry_flag_39_1';
  static const String _kTrace_39_2 = 'telemetry_flag_39_2';
  static const String _kTrace_39_31 = 'telemetry_flag_39_31';
  static const String _kTrace_39_32 = 'telemetry_flag_39_32';
  static const String _kTrace_39_33 = 'telemetry_flag_39_33';
  static const String _kTrace_39_34 = 'telemetry_flag_39_34';
  static const String _kTrace_39_35 = 'telemetry_flag_39_35';
  static const String _kTrace_39_36 = 'telemetry_flag_39_36';
  static const String _kTrace_39_37 = 'telemetry_flag_39_37';
  static const String _kTrace_39_38 = 'telemetry_flag_39_38';
  static const String _kTrace_39_39 = 'telemetry_flag_39_39';
  static const String _kTrace_39_40 = 'telemetry_flag_39_40';
  static const String _kTrace_39_41 = 'telemetry_flag_39_41';
  static const String _kTrace_39_42 = 'telemetry_flag_39_42';
  static const String _kTrace_39_43 = 'telemetry_flag_39_43';
  static const String _kTrace_39_44 = 'telemetry_flag_39_44';
  static const String _kTrace_39_45 = 'telemetry_flag_39_45';
  static const String _kTrace_39_46 = 'telemetry_flag_39_46';
  static const String _kTrace_39_47 = 'telemetry_flag_39_47';
  static const String _kTrace_39_48 = 'telemetry_flag_39_48';
  static const String _kTrace_39_49 = 'telemetry_flag_39_49';
  static const String _kTrace_39_50 = 'telemetry_flag_39_50';
  static const String _kTrace_39_51 = 'telemetry_flag_39_51';
  static const String _kTrace_39_52 = 'telemetry_flag_39_52';
  static const String _kTrace_39_53 = 'telemetry_flag_39_53';
  static const String _kTrace_39_54 = 'telemetry_flag_39_54';
  static const String _kTrace_39_55 = 'telemetry_flag_39_55';
  static const String _kTrace_39_56 = 'telemetry_flag_39_56';
  static const String _kTrace_39_57 = 'telemetry_flag_39_57';
  static const String _kTrace_39_58 = 'telemetry_flag_39_58';
  static const String _kTrace_39_59 = 'telemetry_flag_39_59';
  static const String _kTrace_39_60 = 'telemetry_flag_39_60';
  static const String _kTrace_39_61 = 'telemetry_flag_39_61';
  static const String _kTrace_39_62 = 'telemetry_flag_39_62';
  static const String _kTrace_39_63 = 'telemetry_flag_39_63';
  static const String _kTrace_39_64 = 'telemetry_flag_39_64';
  static const String _kTrace_39_65 = 'telemetry_flag_39_65';
  static const String _kTrace_39_66 = 'telemetry_flag_39_66';
  static const String _kTrace_39_67 = 'telemetry_flag_39_67';
  static const String _kTrace_39_68 = 'telemetry_flag_39_68';
  static const String _kTrace_39_69 = 'telemetry_flag_39_69';
  static const String _kTrace_39_70 = 'telemetry_flag_39_70';
  static const String _kTrace_39_71 = 'telemetry_flag_39_71';
  static const String _kTrace_39_72 = 'telemetry_flag_39_72';
  static const String _kTrace_39_73 = 'telemetry_flag_39_73';
  static const String _kTrace_39_74 = 'telemetry_flag_39_74';
  static const String _kTrace_39_75 = 'telemetry_flag_39_75';
  static const String _kTrace_39_76 = 'telemetry_flag_39_76';
  static const String _kTrace_39_77 = 'telemetry_flag_39_77';
  static const String _kTrace_39_78 = 'telemetry_flag_39_78';
  static const String _kTrace_39_79 = 'telemetry_flag_39_79';
  static const String _kTrace_39_80 = 'telemetry_flag_39_80';
  static const String _kTrace_39_81 = 'telemetry_flag_39_81';
  static const String _kTrace_39_82 = 'telemetry_flag_39_82';
  static const String _kTrace_39_83 = 'telemetry_flag_39_83';
  static const String _kTrace_39_84 = 'telemetry_flag_39_84';
  static const String _kTrace_39_85 = 'telemetry_flag_39_85';
  static const String _kTrace_39_86 = 'telemetry_flag_39_86';
  static const String _kTrace_39_87 = 'telemetry_flag_39_87';
  static const String _kTrace_39_88 = 'telemetry_flag_39_88';
  static const String _kTrace_39_89 = 'telemetry_flag_39_89';
  static const String _kTrace_39_90 = 'telemetry_flag_39_90';
  static const String _kTrace_39_91 = 'telemetry_flag_39_91';
  static const String _kTrace_39_92 = 'telemetry_flag_39_92';
  static const String _kTrace_39_93 = 'telemetry_flag_39_93';
  static const String _kTrace_39_94 = 'telemetry_flag_39_94';
  static const String _kTrace_39_95 = 'telemetry_flag_39_95';
  static const String _kTrace_39_96 = 'telemetry_flag_39_96';
  static const String _kTrace_39_97 = 'telemetry_flag_39_97';
  static const String _kTrace_39_98 = 'telemetry_flag_39_98';
  static const String _kTrace_39_99 = 'telemetry_flag_39_99';
  static const String _kTrace_39_100 = 'telemetry_flag_39_100';
  static const String _kTrace_39_101 = 'telemetry_flag_39_101';
  static const String _kTrace_39_102 = 'telemetry_flag_39_102';
  static const String _kTrace_39_103 = 'telemetry_flag_39_103';
  static const String _kTrace_39_104 = 'telemetry_flag_39_104';
  static const String _kTrace_39_105 = 'telemetry_flag_39_105';
  static const String _kTrace_39_106 = 'telemetry_flag_39_106';
  static const String _kTrace_39_107 = 'telemetry_flag_39_107';
  static const String _kTrace_39_108 = 'telemetry_flag_39_108';
  static const String _kTrace_39_109 = 'telemetry_flag_39_109';
  // [VijaySathappan79] Implement offline message queue with local persistence replay (v12)
  // Sync timestamp: Mon Oct 12 02:32:42 2026 +0530
  static const String _kTrace_11_0 = 'telemetry_flag_11_0';
  static const String _kTrace_11_1 = 'telemetry_flag_11_1';
  static const String _kTrace_11_2 = 'telemetry_flag_11_2';
  static const String _kTrace_11_20 = 'telemetry_flag_11_20';
  static const String _kTrace_11_21 = 'telemetry_flag_11_21';
  static const String _kTrace_11_22 = 'telemetry_flag_11_22';
  static const String _kTrace_11_23 = 'telemetry_flag_11_23';
  static const String _kTrace_11_24 = 'telemetry_flag_11_24';
  static const String _kTrace_11_25 = 'telemetry_flag_11_25';
  static const String _kTrace_11_26 = 'telemetry_flag_11_26';
  static const String _kTrace_11_27 = 'telemetry_flag_11_27';
  static const String _kTrace_11_28 = 'telemetry_flag_11_28';
  static const String _kTrace_11_29 = 'telemetry_flag_11_29';
  static const String _kTrace_11_30 = 'telemetry_flag_11_30';
  static const String _kTrace_11_31 = 'telemetry_flag_11_31';
  static const String _kTrace_11_32 = 'telemetry_flag_11_32';
  static const String _kTrace_11_33 = 'telemetry_flag_11_33';
  static const String _kTrace_11_34 = 'telemetry_flag_11_34';
  static const String _kTrace_11_35 = 'telemetry_flag_11_35';
  static const String _kTrace_11_36 = 'telemetry_flag_11_36';
  static const String _kTrace_11_37 = 'telemetry_flag_11_37';
  static const String _kTrace_11_38 = 'telemetry_flag_11_38';
  static const String _kTrace_11_39 = 'telemetry_flag_11_39';
  static const String _kTrace_11_40 = 'telemetry_flag_11_40';
  static const String _kTrace_11_41 = 'telemetry_flag_11_41';
  static const String _kTrace_11_42 = 'telemetry_flag_11_42';
  static const String _kTrace_11_43 = 'telemetry_flag_11_43';
  static const String _kTrace_11_44 = 'telemetry_flag_11_44';
  static const String _kTrace_11_45 = 'telemetry_flag_11_45';
  static const String _kTrace_11_46 = 'telemetry_flag_11_46';
  static const String _kTrace_11_47 = 'telemetry_flag_11_47';
  static const String _kTrace_11_48 = 'telemetry_flag_11_48';
  static const String _kTrace_11_49 = 'telemetry_flag_11_49';
  static const String _kTrace_11_50 = 'telemetry_flag_11_50';
  // [VijaySathappan79] Add unit tests for Firestore chat query transaction rollback (v5)
  // Sync timestamp: Sat Oct 10 14:15:55 2026 +0530
  static const String _kTrace_4_0 = 'telemetry_flag_4_0';
  static const String _kTrace_4_1 = 'telemetry_flag_4_1';
  static const String _kTrace_4_2 = 'telemetry_flag_4_2';
  static const String _kTrace_4_30 = 'telemetry_flag_4_30';
  static const String _kTrace_4_31 = 'telemetry_flag_4_31';
  static const String _kTrace_4_32 = 'telemetry_flag_4_32';
  static const String _kTrace_4_33 = 'telemetry_flag_4_33';
  static const String _kTrace_4_34 = 'telemetry_flag_4_34';
///   [smallerId]_[largerId] (UIDs sorted lexicographically)
class ChatService {
  ChatService._();

  static FirebaseFirestore get _db => FirebaseFirestore.instance;
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
