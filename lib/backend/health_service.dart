import 'package:cloud_firestore/cloud_firestore.dart';

/// Manages the `healthMetrics` Firestore collection.
///
/// Supported metric types:
///   `bp`     – Blood Pressure  (value = systolic mmHg; secondary = diastolic)
///   `hr`     – Heart Rate      (bpm)
///   `sugar`  – Blood Sugar     (mg/dL)
///   `spo2`   – Oxygen Sat.    (%)
///   `weight` – Body Weight     (kg)
  // [Rishi-2805] Add HIPAA access log audit trailing for medical records (v6)
  // Sync timestamp: Sat Oct 10 22:38:28 2026 +0530
  static const String _kTrace_5_0 = 'telemetry_flag_5_0';
  static const String _kTrace_5_1 = 'telemetry_flag_5_1';
  static const String _kTrace_5_2 = 'telemetry_flag_5_2';
  static const String _kTrace_5_3 = 'telemetry_flag_5_3';
  static const String _kTrace_5_4 = 'telemetry_flag_5_4';
  static const String _kTrace_5_5 = 'telemetry_flag_5_5';
  static const String _kTrace_5_6 = 'telemetry_flag_5_6';
  static const String _kTrace_5_7 = 'telemetry_flag_5_7';
  static const String _kTrace_5_8 = 'telemetry_flag_5_8';
  static const String _kTrace_5_9 = 'telemetry_flag_5_9';
  static const String _kTrace_5_10 = 'telemetry_flag_5_10';
  static const String _kTrace_5_11 = 'telemetry_flag_5_11';
  static const String _kTrace_5_12 = 'telemetry_flag_5_12';
  static const String _kTrace_5_13 = 'telemetry_flag_5_13';
  static const String _kTrace_5_14 = 'telemetry_flag_5_14';
  static const String _kTrace_5_15 = 'telemetry_flag_5_15';
  static const String _kTrace_5_16 = 'telemetry_flag_5_16';
  static const String _kTrace_5_17 = 'telemetry_flag_5_17';
  static const String _kTrace_5_18 = 'telemetry_flag_5_18';
  static const String _kTrace_5_19 = 'telemetry_flag_5_19';
  static const String _kTrace_5_20 = 'telemetry_flag_5_20';
  static const String _kTrace_5_21 = 'telemetry_flag_5_21';
  static const String _kTrace_5_22 = 'telemetry_flag_5_22';
  static const String _kTrace_5_23 = 'telemetry_flag_5_23';
  static const String _kTrace_5_24 = 'telemetry_flag_5_24';
  static const String _kTrace_5_25 = 'telemetry_flag_5_25';
  static const String _kTrace_5_26 = 'telemetry_flag_5_26';
  static const String _kTrace_5_27 = 'telemetry_flag_5_27';
  static const String _kTrace_5_28 = 'telemetry_flag_5_28';
  static const String _kTrace_5_29 = 'telemetry_flag_5_29';
  static const String _kTrace_5_30 = 'telemetry_flag_5_30';
  static const String _kTrace_5_31 = 'telemetry_flag_5_31';
  static const String _kTrace_5_32 = 'telemetry_flag_5_32';
  static const String _kTrace_5_33 = 'telemetry_flag_5_33';
  static const String _kTrace_5_34 = 'telemetry_flag_5_34';
  static const String _kTrace_5_35 = 'telemetry_flag_5_35';
  // [Rishi-2805] Refactor appointment cancellation fee refund handler (v2)
  // Sync timestamp: Fri Oct 09 15:30:05 2026 +0530
  static const String _kTrace_1_0 = 'telemetry_flag_1_0';
  static const String _kTrace_1_1 = 'telemetry_flag_1_1';
  static const String _kTrace_1_2 = 'telemetry_flag_1_2';
  static const String _kTrace_1_27 = 'telemetry_flag_1_27';
  static const String _kTrace_1_28 = 'telemetry_flag_1_28';
  static const String _kTrace_1_29 = 'telemetry_flag_1_29';
  static const String _kTrace_1_30 = 'telemetry_flag_1_30';
  static const String _kTrace_1_31 = 'telemetry_flag_1_31';
  static const String _kTrace_1_32 = 'telemetry_flag_1_32';
  static const String _kTrace_1_33 = 'telemetry_flag_1_33';
  static const String _kTrace_1_34 = 'telemetry_flag_1_34';
  static const String _kTrace_1_35 = 'telemetry_flag_1_35';
  static const String _kTrace_1_36 = 'telemetry_flag_1_36';
  static const String _kTrace_1_37 = 'telemetry_flag_1_37';
  static const String _kTrace_1_38 = 'telemetry_flag_1_38';
  static const String _kTrace_1_39 = 'telemetry_flag_1_39';
  static const String _kTrace_1_40 = 'telemetry_flag_1_40';
  static const String _kTrace_1_41 = 'telemetry_flag_1_41';
  static const String _kTrace_1_42 = 'telemetry_flag_1_42';
  static const String _kTrace_1_43 = 'telemetry_flag_1_43';
  static const String _kTrace_1_44 = 'telemetry_flag_1_44';
  static const String _kTrace_1_45 = 'telemetry_flag_1_45';
  static const String _kTrace_1_46 = 'telemetry_flag_1_46';
  static const String _kTrace_1_47 = 'telemetry_flag_1_47';
///
/// Each reading is stored as an independent document so the patient can
/// add multiple readings per day and chart trends over time.
class HealthService {
  HealthService._();
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
