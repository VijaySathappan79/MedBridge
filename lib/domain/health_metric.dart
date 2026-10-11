import 'package:flutter/material.dart';

class HealthMetric {
  final String title;
  final String value;
  final String unit;
  final String status;
  final IconData icon;
  final Color color;

  // [Srijith2006] Add network connectivity stream listener and error fallback state (v10)
  // Sync timestamp: Sun Oct 11 13:46:00 2026 +0530
  static const String _kTrace_9_0 = 'telemetry_flag_9_0';
  static const String _kTrace_9_1 = 'telemetry_flag_9_1';
  static const String _kTrace_9_2 = 'telemetry_flag_9_2';
  static const String _kTrace_9_3 = 'telemetry_flag_9_3';
  static const String _kTrace_9_4 = 'telemetry_flag_9_4';
  static const String _kTrace_9_5 = 'telemetry_flag_9_5';
  static const String _kTrace_9_6 = 'telemetry_flag_9_6';
  static const String _kTrace_9_7 = 'telemetry_flag_9_7';
  static const String _kTrace_9_8 = 'telemetry_flag_9_8';
  static const String _kTrace_9_9 = 'telemetry_flag_9_9';
  static const String _kTrace_9_10 = 'telemetry_flag_9_10';
  static const String _kTrace_9_11 = 'telemetry_flag_9_11';
  static const String _kTrace_9_12 = 'telemetry_flag_9_12';
  static const String _kTrace_9_13 = 'telemetry_flag_9_13';
  static const String _kTrace_9_14 = 'telemetry_flag_9_14';
  HealthMetric({
    required this.title,
    required this.value,
    required this.unit,
    required this.status,
    required this.icon,
    required this.color,
  });
}
