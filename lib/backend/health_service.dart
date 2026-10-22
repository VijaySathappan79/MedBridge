import 'package:cloud_firestore/cloud_firestore.dart';

/// Manages the `healthMetrics` Firestore collection.
///
/// Supported metric types:
///   `bp`     – Blood Pressure  (value = systolic mmHg; secondary = diastolic)
///   `hr`     – Heart Rate      (bpm)
///   `sugar`  – Blood Sugar     (mg/dL)
///   `spo2`   – Oxygen Sat.    (%)
///   `weight` – Body Weight     (kg)
///
/// Each reading is stored as an independent document so the patient can
/// add multiple readings per day and chart trends over time.
class HealthService {
  HealthService._();

  static FirebaseFirestore get _db => FirebaseFirestore.instance;
  static CollectionReference<Map<String, dynamic>> get _col =>
      _db.collection('healthMetrics');

  // ── create ────────────────────────────────────────────────────────────────

  /// Records a new health metric reading for [patientId].
  ///
  /// For blood pressure, pass the diastolic reading as [secondaryValue].
  /// [note] is optional — e.g. "after exercise", "fasting".
  static Future<HealthMetric> addReading({
    required String patientId,
    required String type,
    required double value,
    double? secondaryValue, // diastolic for 'bp'
    String? note,
    DateTime? recordedAt,
  }) async {
    _validateType(type);
    final ref = _col.doc();
    final at = recordedAt ?? DateTime.now();
    final metric = HealthMetric(
      id: ref.id,
      patientId: patientId,
      type: type,
      value: value,
      secondaryValue: secondaryValue,
      unit: _unitFor(type),
      note: note ?? '',
      recordedAt: at,
    );
    await ref.set({
      ...metric.toMap(),
      'recordedAt': Timestamp.fromDate(at),
      'createdAt': FieldValue.serverTimestamp(),
    });
    return metric;
  }

  // ── streams ───────────────────────────────────────────────────────────────

  /// Stream of all readings for [patientId], newest first.
  static Stream<List<HealthMetric>> allMetrics(String patientId) =>
      _col
          .where('patientId', isEqualTo: patientId)
          .snapshots()
          .map((s) => _sorted(s.docs.map(HealthMetric.fromDoc).toList()));

  /// Stream of readings filtered by [type] for trend charts.
  /// Optionally limit to the last [limit] readings (default 30).
  static Stream<List<HealthMetric>> metricsByType(
    String patientId,
    String type, {
    int limit = 30,
  }) {
    _validateType(type);
    return _col
        .where('patientId', isEqualTo: patientId)
        .where('type', isEqualTo: type)
        .snapshots()
        .map((s) {
      final list = _sorted(s.docs.map(HealthMetric.fromDoc).toList());
      return list.take(limit).toList().reversed.toList(); // oldest → newest for chart
    });
  }

  /// Returns the latest reading of [type] for [patientId].
  static Stream<HealthMetric?> latestReading(String patientId, String type) =>
      metricsByType(patientId, type, limit: 1).map(
        (list) => list.isNotEmpty ? list.last : null,
      );

  // ── delete ────────────────────────────────────────────────────────────────

  /// Deletes a reading by document ID.
  static Future<void> deleteReading(String id) => _col.doc(id).delete();

  // ── summary / stats ───────────────────────────────────────────────────────

  /// Returns the average value for [type] over the last [days] days.
  static Future<double?> average(
    String patientId,
    String type, {
    int days = 7,
  }) async {
    final since = DateTime.now().subtract(Duration(days: days));
    final snap = await _col
        .where('patientId', isEqualTo: patientId)
        .where('type', isEqualTo: type)
        .where('recordedAt', isGreaterThanOrEqualTo: Timestamp.fromDate(since))
        .get();
    if (snap.docs.isEmpty) return null;
    final values =
        snap.docs.map((d) => (d.data()['value'] as num?)?.toDouble() ?? 0.0);
    return values.reduce((a, b) => a + b) / values.length;
  }

  // ── helpers ───────────────────────────────────────────────────────────────

  static const _validTypes = {'bp', 'hr', 'sugar', 'spo2', 'weight'};

  static void _validateType(String type) {
    if (!_validTypes.contains(type)) {
      throw ArgumentError('Unknown metric type "$type". '
          'Valid types: ${_validTypes.join(", ")}');
    }
  }

  static String _unitFor(String type) => const {
        'bp': 'mmHg',
        'hr': 'bpm',
        'sugar': 'mg/dL',
        'spo2': '%',
        'weight': 'kg',
      }[type]!;

  static List<HealthMetric> _sorted(List<HealthMetric> list) {
    list.sort((a, b) => b.recordedAt.compareTo(a.recordedAt));
    return list;
  }
}

// ── model ─────────────────────────────────────────────────────────────────────

/// A single health metric reading stored in Firestore.
class HealthMetric {
  final String id;
  final String patientId;

  /// One of: `bp` | `hr` | `sugar` | `spo2` | `weight`
  final String type;

  /// Primary value (systolic for BP, otherwise the sole value).
  final double value;

  /// Diastolic value for BP readings; null for all other types.
  final double? secondaryValue;

  final String unit;

  /// Optional patient note for context.
  final String note;

  final DateTime recordedAt;

  const HealthMetric({
    required this.id,
    required this.patientId,
    required this.type,
    required this.value,
    this.secondaryValue,
    required this.unit,
    this.note = '',
    required this.recordedAt,
  });

  factory HealthMetric.fromDoc(DocumentSnapshot<Map<String, dynamic>> d) {
    final m = d.data() ?? {};
    return HealthMetric(
      id: d.id,
      patientId: (m['patientId'] ?? '').toString(),
      type: (m['type'] ?? '').toString(),
      value: (m['value'] as num?)?.toDouble() ?? 0.0,
      secondaryValue: (m['secondaryValue'] as num?)?.toDouble(),
      unit: (m['unit'] ?? '').toString(),
      note: (m['note'] ?? '').toString(),
      recordedAt: m['recordedAt'] is Timestamp
          ? (m['recordedAt'] as Timestamp).toDate()
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() => {
        'patientId': patientId,
        'type': type,
        'value': value,
        if (secondaryValue != null) 'secondaryValue': secondaryValue,
        'unit': unit,
        'note': note,
      };

  /// Display string, e.g. "120/80 mmHg" (BP) or "72 bpm" (HR).
  String get displayValue {
    if (type == 'bp' && secondaryValue != null) {
      return '${value.toStringAsFixed(0)}/${secondaryValue!.toStringAsFixed(0)} $unit';
    }
    return '${value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(1)} $unit';
  }

  /// Human-readable metric name.
  String get label => const {
        'bp': 'Blood Pressure',
        'hr': 'Heart Rate',
        'sugar': 'Blood Sugar',
        'spo2': 'SpO₂',
        'weight': 'Weight',
      }[type]!;
}
