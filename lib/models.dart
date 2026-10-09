import 'package:cloud_firestore/cloud_firestore.dart';

String _s(Map<String, dynamic> m, String k) => (m[k] ?? '').toString();
int _i(Map<String, dynamic> m, String k) => (m[k] as num?)?.toInt() ?? 0;
double _d(Map<String, dynamic> m, String k) => (m[k] as num?)?.toDouble() ?? 0;
bool _b(Map<String, dynamic> m, String k) => m[k] == true;

/// Represents a doctor's public profile.
class Doctor {
  final String id;
  final String name;
  final String specialization;
  final String hospital;
  final String about;
  final int experienceYears;
  final int fee;
  final int reviewCount;
  final double rating;
  final bool isVerified;
  final bool isEnabled;
  final String medicalRegNo;
  final Map<String, dynamic> availability;

  const Doctor({
    required this.id,
    required this.name,
    required this.specialization,
    required this.hospital,
    required this.about,
    required this.experienceYears,
    required this.fee,
    required this.reviewCount,
    required this.rating,
    this.isVerified = false,
    this.isEnabled = true,
    this.medicalRegNo = '',
    this.availability = const {},
  });

  factory Doctor.fromDoc(DocumentSnapshot<Map<String, dynamic>> d) {
    final m = d.data() ?? <String, dynamic>{};
    return Doctor(
      id: d.id,
      name: _s(m, 'name'),
      specialization: _s(m, 'specialization'),
      hospital: _s(m, 'hospital'),
      about: _s(m, 'about'),
      experienceYears: _i(m, 'experienceYears'),
      fee: _i(m, 'fee'),
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
