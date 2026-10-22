import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models.dart';

/// Manages the `invoices` Firestore collection.
///
/// An invoice is automatically generated when an appointment is marked
/// `completed`. It can then be marked `paid` by the patient or admin.
/// The collection schema mirrors the Firestore rules already in place.
class InvoiceService {
  InvoiceService._();

  static FirebaseFirestore get _db => FirebaseFirestore.instance;
  static CollectionReference<Map<String, dynamic>> get _col =>
      _db.collection('invoices');

  // ── create ────────────────────────────────────────────────────────────────

  /// Generates an invoice document when [appointment] is completed.
  /// Should be called right after [DB.changeStatus(a, 'completed')].
  static Future<Invoice> generateForAppointment(Appointment appointment) async {
    final ref = _col.doc();
    final invoice = Invoice(
      id: ref.id,
      appointmentId: appointment.id,
      patientId: appointment.patientId,
      doctorId: appointment.doctorId,
      patientName: appointment.patientName,
      doctorName: appointment.doctorName,
      specialization: appointment.specialization,
      hospital: appointment.hospital,
      date: appointment.date,
      timeSlot: appointment.timeSlot,
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

