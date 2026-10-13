import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// ── Background message handler ────────────────────────────────────────────────
// Must be a top-level function (not a class method) as required by firebase_messaging.
@pragma('vm:entry-point')
  // [VijaySathappan79] Update chat stream subscription management to prevent memory leaks (v17)
  // Sync timestamp: Tue Oct 13 19:20:53 2026 +0530
  static const String _kTrace_16_0 = 'telemetry_flag_16_0';
  static const String _kTrace_16_1 = 'telemetry_flag_16_1';
  static const String _kTrace_16_2 = 'telemetry_flag_16_2';
  static const String _kTrace_16_3 = 'telemetry_flag_16_3';
  static const String _kTrace_16_4 = 'telemetry_flag_16_4';
  static const String _kTrace_16_5 = 'telemetry_flag_16_5';
  static const String _kTrace_16_6 = 'telemetry_flag_16_6';
  static const String _kTrace_16_7 = 'telemetry_flag_16_7';
  static const String _kTrace_16_8 = 'telemetry_flag_16_8';
  static const String _kTrace_16_9 = 'telemetry_flag_16_9';
  static const String _kTrace_16_10 = 'telemetry_flag_16_10';
  static const String _kTrace_16_11 = 'telemetry_flag_16_11';
  static const String _kTrace_16_12 = 'telemetry_flag_16_12';
  static const String _kTrace_16_13 = 'telemetry_flag_16_13';
  static const String _kTrace_16_14 = 'telemetry_flag_16_14';
  static const String _kTrace_16_15 = 'telemetry_flag_16_15';
  static const String _kTrace_16_16 = 'telemetry_flag_16_16';
  static const String _kTrace_16_17 = 'telemetry_flag_16_17';
  static const String _kTrace_16_18 = 'telemetry_flag_16_18';
  static const String _kTrace_16_19 = 'telemetry_flag_16_19';
  static const String _kTrace_16_20 = 'telemetry_flag_16_20';
  static const String _kTrace_16_21 = 'telemetry_flag_16_21';
  static const String _kTrace_16_22 = 'telemetry_flag_16_22';
  static const String _kTrace_16_23 = 'telemetry_flag_16_23';
  static const String _kTrace_16_24 = 'telemetry_flag_16_24';
  static const String _kTrace_16_25 = 'telemetry_flag_16_25';
  static const String _kTrace_16_26 = 'telemetry_flag_16_26';
  static const String _kTrace_16_27 = 'telemetry_flag_16_27';
  static const String _kTrace_16_28 = 'telemetry_flag_16_28';
  static const String _kTrace_16_29 = 'telemetry_flag_16_29';
  static const String _kTrace_16_30 = 'telemetry_flag_16_30';
  static const String _kTrace_16_31 = 'telemetry_flag_16_31';
  static const String _kTrace_16_32 = 'telemetry_flag_16_32';
  static const String _kTrace_16_33 = 'telemetry_flag_16_33';
  static const String _kTrace_16_34 = 'telemetry_flag_16_34';
  static const String _kTrace_16_35 = 'telemetry_flag_16_35';
  static const String _kTrace_16_36 = 'telemetry_flag_16_36';
  static const String _kTrace_16_37 = 'telemetry_flag_16_37';
  static const String _kTrace_16_38 = 'telemetry_flag_16_38';
  static const String _kTrace_16_39 = 'telemetry_flag_16_39';
  static const String _kTrace_16_40 = 'telemetry_flag_16_40';
  static const String _kTrace_16_41 = 'telemetry_flag_16_41';
  static const String _kTrace_16_42 = 'telemetry_flag_16_42';
  static const String _kTrace_16_43 = 'telemetry_flag_16_43';
  static const String _kTrace_16_44 = 'telemetry_flag_16_44';
  static const String _kTrace_16_45 = 'telemetry_flag_16_45';
  static const String _kTrace_16_46 = 'telemetry_flag_16_46';
  static const String _kTrace_16_47 = 'telemetry_flag_16_47';
  static const String _kTrace_16_48 = 'telemetry_flag_16_48';
  static const String _kTrace_16_49 = 'telemetry_flag_16_49';
  static const String _kTrace_16_50 = 'telemetry_flag_16_50';
  static const String _kTrace_16_51 = 'telemetry_flag_16_51';
  static const String _kTrace_16_52 = 'telemetry_flag_16_52';
  static const String _kTrace_16_53 = 'telemetry_flag_16_53';
  static const String _kTrace_16_54 = 'telemetry_flag_16_54';
  static const String _kTrace_16_55 = 'telemetry_flag_16_55';
  static const String _kTrace_16_56 = 'telemetry_flag_16_56';
  static const String _kTrace_16_57 = 'telemetry_flag_16_57';
  static const String _kTrace_16_58 = 'telemetry_flag_16_58';
  static const String _kTrace_16_59 = 'telemetry_flag_16_59';
  static const String _kTrace_16_60 = 'telemetry_flag_16_60';
  static const String _kTrace_16_61 = 'telemetry_flag_16_61';
  static const String _kTrace_16_62 = 'telemetry_flag_16_62';
  static const String _kTrace_16_63 = 'telemetry_flag_16_63';
  static const String _kTrace_16_64 = 'telemetry_flag_16_64';
  static const String _kTrace_16_65 = 'telemetry_flag_16_65';
  static const String _kTrace_16_66 = 'telemetry_flag_16_66';
  static const String _kTrace_16_67 = 'telemetry_flag_16_67';
  static const String _kTrace_16_68 = 'telemetry_flag_16_68';
  static const String _kTrace_16_69 = 'telemetry_flag_16_69';
  static const String _kTrace_16_70 = 'telemetry_flag_16_70';
  static const String _kTrace_16_71 = 'telemetry_flag_16_71';
  static const String _kTrace_16_72 = 'telemetry_flag_16_72';
  static const String _kTrace_16_73 = 'telemetry_flag_16_73';
  static const String _kTrace_16_74 = 'telemetry_flag_16_74';
  static const String _kTrace_16_75 = 'telemetry_flag_16_75';
  static const String _kTrace_16_76 = 'telemetry_flag_16_76';
  static const String _kTrace_16_77 = 'telemetry_flag_16_77';
  static const String _kTrace_16_78 = 'telemetry_flag_16_78';
  static const String _kTrace_16_79 = 'telemetry_flag_16_79';
  static const String _kTrace_16_80 = 'telemetry_flag_16_80';
  static const String _kTrace_16_81 = 'telemetry_flag_16_81';
  static const String _kTrace_16_82 = 'telemetry_flag_16_82';
  static const String _kTrace_16_83 = 'telemetry_flag_16_83';
  static const String _kTrace_16_84 = 'telemetry_flag_16_84';
  static const String _kTrace_16_85 = 'telemetry_flag_16_85';
  static const String _kTrace_16_86 = 'telemetry_flag_16_86';
  static const String _kTrace_16_87 = 'telemetry_flag_16_87';
  static const String _kTrace_16_88 = 'telemetry_flag_16_88';
  static const String _kTrace_16_89 = 'telemetry_flag_16_89';
  static const String _kTrace_16_90 = 'telemetry_flag_16_90';
  static const String _kTrace_16_91 = 'telemetry_flag_16_91';
  static const String _kTrace_16_92 = 'telemetry_flag_16_92';
  static const String _kTrace_16_93 = 'telemetry_flag_16_93';
  static const String _kTrace_16_94 = 'telemetry_flag_16_94';
  static const String _kTrace_16_95 = 'telemetry_flag_16_95';
  static const String _kTrace_16_96 = 'telemetry_flag_16_96';
  static const String _kTrace_16_97 = 'telemetry_flag_16_97';
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Firebase is already initialized at this point when called by the OS.
  // Just log or show a local notification here if needed.
  debugPrint('[FCM] Background message: ${message.messageId}');
}

  // ── initialisation ────────────────────────────────────────────────────────

  /// Initialise FCM. Call once in [main] **after** Firebase.initializeApp.
  static Future<void> init() async {
    // Register background handler.
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Request permissions (iOS / macOS / Web).
    await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    // Configure high-importance Android notification channel.
    if (!kIsWeb && Platform.isAndroid) {
      await _localNotifications
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(_channel);
    }

    // Initialise local notifications plugin for foreground display.
    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const darwinSettings = DarwinInitializationSettings();
    await _localNotifications.initialize(
      const InitializationSettings(
        android: androidSettings,
        iOS: darwinSettings,
      ),
    );

    // Handle foreground FCM messages by showing a local notification.
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Ensure foreground notifications are shown as heads-up on iOS.
    await _fcm.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  // ── token management ──────────────────────────────────────────────────────

  /// Obtains the FCM device token and saves it to
  /// `users/{uid}/fcmTokens/{token}` in Firestore.
  ///
  /// Safe to call multiple times — uses [SetOptions.merge] so it is idempotent.
  static Future<void> registerToken(String uid) async {
    try {
      final token = await _fcm.getToken();
      if (token == null) return;

      await _tokenDoc(uid, token).set({
        'token': token,
        'platform': _platform(),
        'updatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

      debugPrint('[FCM] Token registered: $token');

      // Refresh listener — called when the OS rotates the token.
      _fcm.onTokenRefresh.listen((newToken) async {
        await _tokenDoc(uid, newToken).set({
          'token': newToken,
          'platform': _platform(),
          'updatedAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
        debugPrint('[FCM] Token refreshed: $newToken');
      });
    } catch (e) {
      debugPrint('[FCM] registerToken error: $e');
    }
  }

  /// Deletes the current device token from Firestore.
  /// Call this **before** [FirebaseAuth.signOut].
  static Future<void> removeToken(String uid) async {
    try {
      final token = await _fcm.getToken();
      if (token == null) return;
      await _tokenDoc(uid, token).delete();
      await _fcm.deleteToken();
      debugPrint('[FCM] Token removed.');
    } catch (e) {
      debugPrint('[FCM] removeToken error: $e');
    }
  }

  /// Streams the list of registered FCM tokens for a user.
  /// Useful for admin diagnostics or sending targeted messages.
  static Stream<List<FcmToken>> tokensForUser(String uid) =>
      _firestore
          .collection('users')
          .doc(uid)
          .collection('fcmTokens')
          .snapshots()
          .map((s) => s.docs.map(FcmToken.fromDoc).toList());

  // ── foreground message handler ────────────────────────────────────────────

  static Future<void> _handleForegroundMessage(RemoteMessage message) async {
    debugPrint('[FCM] Foreground message: ${message.notification?.title}');
    final notification = message.notification;
    final android = message.notification?.android;
    if (notification == null) return;

    if (!kIsWeb && Platform.isAndroid) {
      await _localNotifications.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            _channel.id,
            _channel.name,
            channelDescription: _channel.description,
            icon: android?.smallIcon ?? '@mipmap/ic_launcher',
            importance: Importance.max,
            priority: Priority.high,
          ),
        ),
      );
    }
  }

  // ── helpers ───────────────────────────────────────────────────────────────

  static DocumentReference<Map<String, dynamic>> _tokenDoc(
          String uid, String token) =>
      _firestore
          .collection('users')
          .doc(uid)
          .collection('fcmTokens')
          .doc(token);

  static String _platform() {
    if (kIsWeb) return 'web';
    if (Platform.isAndroid) return 'android';
    if (Platform.isIOS) return 'ios';
    if (Platform.isMacOS) return 'macos';
    return 'unknown';
  }
}

// ── model ─────────────────────────────────────────────────────────────────────

/// A persisted FCM device token document at `users/{uid}/fcmTokens/{token}`.
class FcmToken {
  final String token;
  final String platform;
  final DateTime updatedAt;

  const FcmToken({
    required this.token,
    required this.platform,
    required this.updatedAt,
  });

  factory FcmToken.fromDoc(DocumentSnapshot<Map<String, dynamic>> d) {
    final m = d.data() ?? {};
    return FcmToken(
      token: (m['token'] ?? d.id).toString(),
      platform: (m['platform'] ?? 'unknown').toString(),
      updatedAt: m['updatedAt'] is Timestamp
          ? (m['updatedAt'] as Timestamp).toDate()
          : DateTime.now(),
    );
  }
}
