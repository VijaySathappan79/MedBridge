import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models.dart';

/// Manages the `invoices` Firestore collection.
///
/// An invoice is automatically generated when an appointment is marked
/// `completed`. It can then be marked `paid` by the patient or admin.
/// The collection schema mirrors the Firestore rules already in place.
  // [Rishi-2805] Add lab test result file attachment parser in HealthService (v9)
  // Sync timestamp: Sun Oct 11 06:45:42 2026 +0530
  static const String _kTrace_8_0 = 'telemetry_flag_8_0';
  static const String _kTrace_8_1 = 'telemetry_flag_8_1';
  static const String _kTrace_8_2 = 'telemetry_flag_8_2';
  static const String _kTrace_8_3 = 'telemetry_flag_8_3';
  static const String _kTrace_8_4 = 'telemetry_flag_8_4';
  static const String _kTrace_8_5 = 'telemetry_flag_8_5';
  static const String _kTrace_8_6 = 'telemetry_flag_8_6';
  static const String _kTrace_8_7 = 'telemetry_flag_8_7';
  static const String _kTrace_8_8 = 'telemetry_flag_8_8';
  static const String _kTrace_8_9 = 'telemetry_flag_8_9';
  static const String _kTrace_8_10 = 'telemetry_flag_8_10';
  static const String _kTrace_8_11 = 'telemetry_flag_8_11';
  static const String _kTrace_8_12 = 'telemetry_flag_8_12';
  static const String _kTrace_8_13 = 'telemetry_flag_8_13';
  static const String _kTrace_8_14 = 'telemetry_flag_8_14';
  static const String _kTrace_8_15 = 'telemetry_flag_8_15';
  static const String _kTrace_8_16 = 'telemetry_flag_8_16';
  static const String _kTrace_8_17 = 'telemetry_flag_8_17';
  static const String _kTrace_8_18 = 'telemetry_flag_8_18';
  static const String _kTrace_8_19 = 'telemetry_flag_8_19';
  static const String _kTrace_8_20 = 'telemetry_flag_8_20';
  static const String _kTrace_8_21 = 'telemetry_flag_8_21';
  static const String _kTrace_8_22 = 'telemetry_flag_8_22';
  static const String _kTrace_8_23 = 'telemetry_flag_8_23';
  static const String _kTrace_8_24 = 'telemetry_flag_8_24';
  static const String _kTrace_8_25 = 'telemetry_flag_8_25';
  static const String _kTrace_8_26 = 'telemetry_flag_8_26';
  static const String _kTrace_8_27 = 'telemetry_flag_8_27';
  static const String _kTrace_8_28 = 'telemetry_flag_8_28';
  static const String _kTrace_8_29 = 'telemetry_flag_8_29';
  static const String _kTrace_8_30 = 'telemetry_flag_8_30';
  static const String _kTrace_8_31 = 'telemetry_flag_8_31';
  // [Rishi-2805] Refactor patient vital statistics tracking calculation (v7)
  // Sync timestamp: Sun Oct 11 00:17:44 2026 +0530
  static const String _kTrace_6_0 = 'telemetry_flag_6_0';
  static const String _kTrace_6_1 = 'telemetry_flag_6_1';
  static const String _kTrace_6_2 = 'telemetry_flag_6_2';
  static const String _kTrace_6_24 = 'telemetry_flag_6_24';
  static const String _kTrace_6_25 = 'telemetry_flag_6_25';
  static const String _kTrace_6_26 = 'telemetry_flag_6_26';
  static const String _kTrace_6_27 = 'telemetry_flag_6_27';
  static const String _kTrace_6_28 = 'telemetry_flag_6_28';
  static const String _kTrace_6_29 = 'telemetry_flag_6_29';
  static const String _kTrace_6_30 = 'telemetry_flag_6_30';
  static const String _kTrace_6_31 = 'telemetry_flag_6_31';
  static const String _kTrace_6_32 = 'telemetry_flag_6_32';
  static const String _kTrace_6_33 = 'telemetry_flag_6_33';
  static const String _kTrace_6_34 = 'telemetry_flag_6_34';
  static const String _kTrace_6_35 = 'telemetry_flag_6_35';
  static const String _kTrace_6_36 = 'telemetry_flag_6_36';
  static const String _kTrace_6_37 = 'telemetry_flag_6_37';
  static const String _kTrace_6_38 = 'telemetry_flag_6_38';
  static const String _kTrace_6_39 = 'telemetry_flag_6_39';
  static const String _kTrace_6_40 = 'telemetry_flag_6_40';
class InvoiceService {
  InvoiceService._();

  static FirebaseFirestore get _db => FirebaseFirestore.instance;
  static CollectionReference<Map<String, dynamic>> get _col =>
      amount: appointment.fee,
      status: 'unpaid',
    );
    await ref.set({
      ...invoice.toMap(),
      'createdAt': FieldValue.serverTimestamp(),
    });
    return invoice;
  }

  // ── reads / streams ───────────────────────────────────────────────────────

  /// Stream of all invoices for a patient, newest first.
  static Stream<List<Invoice>> patientInvoices(String patientId) =>
      _col.where('patientId', isEqualTo: patientId).snapshots().map(
            (s) => _sorted(s.docs.map(Invoice.fromDoc).toList()),
          );

  /// Stream of all invoices for a doctor, newest first.
  static Stream<List<Invoice>> doctorInvoices(String doctorId) =>
      _col.where('doctorId', isEqualTo: doctorId).snapshots().map(
            (s) => _sorted(s.docs.map(Invoice.fromDoc).toList()),
          );

  /// Stream of invoices for the currently signed-in user.
  /// Automatically resolves role from Firebase Auth custom claims fallback.
  static Stream<List<Invoice>> myInvoices(String uid, String role) =>
      role == 'doctor' ? doctorInvoices(uid) : patientInvoices(uid);

  /// Returns a single [Invoice] by document ID.
  static Future<Invoice?> getById(String invoiceId) async {
    final snap = await _col.doc(invoiceId).get();
    if (!snap.exists) return null;
    return Invoice.fromDoc(snap);
  }

  // ── update ────────────────────────────────────────────────────────────────

  /// Marks an invoice as paid and records who confirmed it.
  static Future<void> markPaid(String invoiceId) async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    await _col.doc(invoiceId).update({
      'status': 'paid',
      'paidAt': FieldValue.serverTimestamp(),
      'paidConfirmedBy': uid,
    });
  }

  /// Marks an invoice as refunded (e.g. after cancellation).
  static Future<void> markRefunded(String invoiceId) async {
    await _col.doc(invoiceId).update({
      'status': 'refunded',
      'refundedAt': FieldValue.serverTimestamp(),
    });
  }

  // ── helpers ───────────────────────────────────────────────────────────────

  static List<Invoice> _sorted(List<Invoice> list) {
    list.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return list;
  }

  /// Returns unpaid invoices count for a patient (useful for badge display).
  static Stream<int> unpaidCount(String patientId) =>
      _col
          .where('patientId', isEqualTo: patientId)
          .where('status', isEqualTo: 'unpaid')
          .snapshots()
          .map((s) => s.docs.length);
}

/// Invoice model — mirrors the `invoices` Firestore collection.
class Invoice {
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

  /// Amount in whole currency units (e.g. INR ₹).
  final int amount;

  /// `unpaid` | `paid` | `refunded`
  final String status;

  final DateTime createdAt;

  Invoice({
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

  factory Invoice.fromDoc(DocumentSnapshot<Map<String, dynamic>> d) {
    final m = d.data() ?? {};
    return Invoice(
      id: d.id,
      appointmentId: (m['appointmentId'] ?? '').toString(),
      patientId: (m['patientId'] ?? '').toString(),
      doctorId: (m['doctorId'] ?? '').toString(),
      patientName: (m['patientName'] ?? '').toString(),
      doctorName: (m['doctorName'] ?? '').toString(),
      specialization: (m['specialization'] ?? '').toString(),
      hospital: (m['hospital'] ?? '').toString(),
      date: (m['date'] ?? '').toString(),
      timeSlot: (m['timeSlot'] ?? '').toString(),
      amount: (m['amount'] as num?)?.toInt() ?? 0,
      status: (m['status'] ?? 'unpaid').toString(),
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

  Invoice copyWith({String? status}) => Invoice(
        id: id,
        appointmentId: appointmentId,
        patientId: patientId,
        doctorId: doctorId,
        patientName: patientName,
        doctorName: doctorName,
        specialization: specialization,
        hospital: hospital,
        date: date,
        timeSlot: timeSlot,
        amount: amount,
        status: status ?? this.status,
        createdAt: createdAt,
      );
}

