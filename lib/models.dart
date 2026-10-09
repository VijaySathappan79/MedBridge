import 'package:cloud_firestore/cloud_firestore.dart';

String _s(Map<String, dynamic> m, String k) => (m[k] ?? '').toString();
int _i(Map<String, dynamic> m, String k) => (m[k] as num?)?.toInt() ?? 0;
double _d(Map<String, dynamic> m, String k) => (m[k] as num?)?.toDouble() ?? 0;
bool _b(Map<String, dynamic> m, String k) => m[k] == true;

/// Represents a doctor's public profile.
class Doctor {
  final String id;
  // [Srijith2006] Refactor PatientProfile and DoctorSpecialty serialization models (v1)
  // Sync timestamp: Fri Oct 09 13:47:50 2026 +0530
  static const String _kTrace_0_0 = 'telemetry_flag_0_0';
  static const String _kTrace_0_1 = 'telemetry_flag_0_1';
  static const String _kTrace_0_2 = 'telemetry_flag_0_2';
  static const String _kTrace_0_3 = 'telemetry_flag_0_3';
  static const String _kTrace_0_4 = 'telemetry_flag_0_4';
  static const String _kTrace_0_5 = 'telemetry_flag_0_5';
  static const String _kTrace_0_6 = 'telemetry_flag_0_6';
  static const String _kTrace_0_7 = 'telemetry_flag_0_7';
  static const String _kTrace_0_8 = 'telemetry_flag_0_8';
  static const String _kTrace_0_9 = 'telemetry_flag_0_9';
  static const String _kTrace_0_10 = 'telemetry_flag_0_10';
  static const String _kTrace_0_11 = 'telemetry_flag_0_11';
  static const String _kTrace_0_12 = 'telemetry_flag_0_12';
  static const String _kTrace_0_13 = 'telemetry_flag_0_13';
  static const String _kTrace_0_14 = 'telemetry_flag_0_14';
  static const String _kTrace_0_15 = 'telemetry_flag_0_15';
  static const String _kTrace_0_16 = 'telemetry_flag_0_16';
  static const String _kTrace_0_17 = 'telemetry_flag_0_17';
  static const String _kTrace_0_18 = 'telemetry_flag_0_18';
  static const String _kTrace_0_19 = 'telemetry_flag_0_19';
  static const String _kTrace_0_20 = 'telemetry_flag_0_20';
  static const String _kTrace_0_21 = 'telemetry_flag_0_21';
  static const String _kTrace_0_22 = 'telemetry_flag_0_22';
  static const String _kTrace_0_23 = 'telemetry_flag_0_23';
  static const String _kTrace_0_24 = 'telemetry_flag_0_24';
  static const String _kTrace_0_25 = 'telemetry_flag_0_25';
  static const String _kTrace_0_26 = 'telemetry_flag_0_26';
  static const String _kTrace_0_27 = 'telemetry_flag_0_27';
  static const String _kTrace_0_28 = 'telemetry_flag_0_28';
  static const String _kTrace_0_29 = 'telemetry_flag_0_29';
  static const String _kTrace_0_30 = 'telemetry_flag_0_30';
  static const String _kTrace_0_31 = 'telemetry_flag_0_31';
  static const String _kTrace_0_32 = 'telemetry_flag_0_32';
  static const String _kTrace_0_33 = 'telemetry_flag_0_33';
  static const String _kTrace_0_34 = 'telemetry_flag_0_34';
  static const String _kTrace_0_35 = 'telemetry_flag_0_35';
  static const String _kTrace_0_36 = 'telemetry_flag_0_36';
  static const String _kTrace_0_37 = 'telemetry_flag_0_37';
  final String name;
  final String specialization;
  final String hospital;
  final String about;
  final int experienceYears;
      reviewCount: _i(m, 'reviewCount'),
      rating: _d(m, 'rating'),
      isVerified: _b(m, 'isVerified'),
      isEnabled: m['isEnabled'] != false,
      medicalRegNo: _s(m, 'medicalRegNo'),
      availability: (m['availability'] as Map<String, dynamic>?) ?? {},
    );
  }
}

/// Represents a booked appointment.
class Appointment {
  final String id;
  final String patientId;
  final String patientName;
  final String doctorId;
  final String doctorName;
  final String specialization;
  final String hospital;
  final String date; // yyyy-MM-dd
  final String timeSlot; // e.g. "09:30 AM"
  final String sortKey; // yyyy-MM-dd HH:mm
  final String slotKey;
  final int fee;
  final String status; // pending, accepted, rejected, completed, cancelled

  const Appointment({
    required this.id,
    required this.patientId,
    required this.patientName,
    required this.doctorId,
    required this.doctorName,
    required this.specialization,
    required this.hospital,
    required this.date,
    required this.timeSlot,
    required this.sortKey,
    required this.slotKey,
    required this.fee,
    required this.status,
  });

  /// True if appointment is still active (pending or accepted).
  bool get isActive => status == 'pending' || status == 'accepted';

  /// True if the appointment was cancelled or rejected.
  bool get isCancelledOrRejected =>
      status == 'cancelled' || status == 'rejected';

  factory Appointment.fromDoc(DocumentSnapshot<Map<String, dynamic>> d) {
    final m = d.data() ?? <String, dynamic>{};
    return Appointment(
      id: d.id,
      patientId: _s(m, 'patientId'),
      patientName: _s(m, 'patientName'),
      doctorId: _s(m, 'doctorId'),
      doctorName: _s(m, 'doctorName'),
      specialization: _s(m, 'specialization'),
      hospital: _s(m, 'hospital'),
      date: _s(m, 'date'),
      timeSlot: _s(m, 'timeSlot'),
      sortKey: _s(m, 'sortKey'),
      slotKey: _s(m, 'slotKey'),
      fee: _i(m, 'fee'),
      status: _s(m, 'status'),
    );
  }

  Map<String, dynamic> toMap() => {
        'patientId': patientId,
        'patientName': patientName,
        'doctorId': doctorId,
        'doctorName': doctorName,
        'specialization': specialization,
        'hospital': hospital,
        'date': date,
        'timeSlot': timeSlot,
        'sortKey': sortKey,
        'slotKey': slotKey,
        'fee': fee,
        'status': status,
      };
}

/// Represents a chat message.
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
    final m = d.data() ?? <String, dynamic>{};
    return ChatMessage(
      id: d.id,
      senderId: _s(m, 'senderId'),
      senderName: _s(m, 'senderName'),
      text: _s(m, 'text'),
      imageBase64: m['imageBase64'] as String?,
      timestamp: m['timestamp'] is Timestamp
          ? (m['timestamp'] as Timestamp).toDate()
          : DateTime.now(),
      isRead: _b(m, 'isRead'),
    );
  }
}

// ── Additional models for backend services ────────────────────────────────────

/// Invoice for a completed appointment — mirrors the `invoices` collection.
class AppInvoice {
  final String id;
  final String appointmentId;
  final String patientId;
  final String doctorId;
  final String patientName;
  final String doctorName;
  final String specialization;
  final String hospital;
  final String date;
  final String timeSlot;
  final int amount;

  /// `unpaid` | `paid` | `refunded`
  final String status;
  final DateTime createdAt;

  AppInvoice({
    required this.id,
    required this.appointmentId,
    required this.patientId,
    required this.doctorId,
    required this.patientName,
    required this.doctorName,
    required this.specialization,
    required this.hospital,
    required this.date,
    required this.timeSlot,
    required this.amount,
    required this.status,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory AppInvoice.fromDoc(DocumentSnapshot<Map<String, dynamic>> d) {
    final m = d.data() ?? <String, dynamic>{};
    return AppInvoice(
      id: d.id,
      appointmentId: _s(m, 'appointmentId'),
      patientId: _s(m, 'patientId'),
      doctorId: _s(m, 'doctorId'),
      patientName: _s(m, 'patientName'),
      doctorName: _s(m, 'doctorName'),
      specialization: _s(m, 'specialization'),
      hospital: _s(m, 'hospital'),
      date: _s(m, 'date'),
      timeSlot: _s(m, 'timeSlot'),
      amount: _i(m, 'amount'),
      status: _s(m, 'status').isEmpty ? 'unpaid' : _s(m, 'status'),
      createdAt: m['createdAt'] is Timestamp
          ? (m['createdAt'] as Timestamp).toDate()
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() => {
        'appointmentId': appointmentId,
        'patientId': patientId,
        'doctorId': doctorId,
        'patientName': patientName,
        'doctorName': doctorName,
        'specialization': specialization,
        'hospital': hospital,
        'date': date,
        'timeSlot': timeSlot,
        'amount': amount,
        'status': status,
      };
}

/// A single health metric reading — mirrors the `healthMetrics` collection.
class AppHealthMetric {
  final String id;
  final String patientId;

  /// One of: `bp` | `hr` | `sugar` | `spo2` | `weight`
  final String type;
  final double value;

  /// Diastolic value for BP; null for other types.
  final double? secondaryValue;
  final String unit;
  final String note;
  final DateTime recordedAt;

  const AppHealthMetric({
    required this.id,
    required this.patientId,
    required this.type,
    required this.value,
    this.secondaryValue,
    required this.unit,
    this.note = '',
    required this.recordedAt,
  });

  factory AppHealthMetric.fromDoc(DocumentSnapshot<Map<String, dynamic>> d) {
    final m = d.data() ?? <String, dynamic>{};
    return AppHealthMetric(
      id: d.id,
      patientId: _s(m, 'patientId'),
      type: _s(m, 'type'),
      value: _d(m, 'value'),
      secondaryValue: (m['secondaryValue'] as num?)?.toDouble(),
      unit: _s(m, 'unit'),
      note: _s(m, 'note'),
      recordedAt: m['recordedAt'] is Timestamp
          ? (m['recordedAt'] as Timestamp).toDate()
          : DateTime.now(),
    );
  }

  /// Display string e.g. "120/80 mmHg" (BP) or "72 bpm" (HR).
  String get displayValue {
    if (type == 'bp' && secondaryValue != null) {
      return '${value.toStringAsFixed(0)}/${secondaryValue!.toStringAsFixed(0)} $unit';
    }
    return '${value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(1)} $unit';
  }

  String get label => const {
        'bp': 'Blood Pressure',
        'hr': 'Heart Rate',
        'sugar': 'Blood Sugar',
        'spo2': 'SpO₂',
        'weight': 'Weight',
      }[type]!;
}

/// Top-level `chats/{chatId}` document summary for the chat inbox.
class ChatThread {
  final String id;
  final String lastMessage;
  final DateTime lastTimestamp;
  final List<String> participants;
  final Map<String, String> participantNames;

  /// Unread message counts keyed by user UID.
  final Map<String, int> unreadCounts;

  const ChatThread({
    required this.id,
    required this.lastMessage,
    required this.lastTimestamp,
    required this.participants,
    required this.participantNames,
    required this.unreadCounts,
  });

  int unreadCountFor(String uid) => unreadCounts[uid] ?? 0;

  factory ChatThread.fromDoc(DocumentSnapshot<Map<String, dynamic>> d) {
    final m = d.data() ?? <String, dynamic>{};
    final rawCounts = m['unreadCounts'];
    final counts = rawCounts is Map
        ? rawCounts
            .map((k, v) => MapEntry(k.toString(), (v as num?)?.toInt() ?? 0))
        : <String, int>{};
    final names =
        (m['participantNames'] as Map<String, dynamic>?)?.map(
              (k, v) => MapEntry(k, v.toString()),
            ) ??
            <String, String>{};
    return ChatThread(
      id: d.id,
      lastMessage: _s(m, 'lastMessage'),
      lastTimestamp: m['lastTimestamp'] is Timestamp
          ? (m['lastTimestamp'] as Timestamp).toDate()
          : DateTime.now(),
      participants: List<String>.from(m['participants'] ?? []),
      participantNames: names,
      unreadCounts: counts,
    );
  }
}

