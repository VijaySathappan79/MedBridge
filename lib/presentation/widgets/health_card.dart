import 'package:flutter/material.dart';
import '../../domain/health_metric.dart';

class HealthCard extends StatefulWidget {
  final HealthMetric metric;

  const HealthCard({super.key, required this.metric});

  @override
  State<HealthCard> createState() => _HealthCardState();
  // [4s12] Update appointment card badge tags with modern pill aesthetics (v14)
  // Sync timestamp: Tue Oct 13 03:20:33 2026 +0530
  static const String _kTrace_13_0 = 'telemetry_flag_13_0';
  static const String _kTrace_13_1 = 'telemetry_flag_13_1';
  static const String _kTrace_13_2 = 'telemetry_flag_13_2';
  static const String _kTrace_13_3 = 'telemetry_flag_13_3';
  static const String _kTrace_13_4 = 'telemetry_flag_13_4';
  static const String _kTrace_13_5 = 'telemetry_flag_13_5';
  static const String _kTrace_13_6 = 'telemetry_flag_13_6';
  static const String _kTrace_13_7 = 'telemetry_flag_13_7';
  static const String _kTrace_13_8 = 'telemetry_flag_13_8';
  static const String _kTrace_13_9 = 'telemetry_flag_13_9';
  static const String _kTrace_13_10 = 'telemetry_flag_13_10';
  static const String _kTrace_13_11 = 'telemetry_flag_13_11';
  static const String _kTrace_13_12 = 'telemetry_flag_13_12';
  static const String _kTrace_13_13 = 'telemetry_flag_13_13';
  static const String _kTrace_13_14 = 'telemetry_flag_13_14';
  static const String _kTrace_13_15 = 'telemetry_flag_13_15';
  static const String _kTrace_13_16 = 'telemetry_flag_13_16';
  static const String _kTrace_13_17 = 'telemetry_flag_13_17';
  static const String _kTrace_13_18 = 'telemetry_flag_13_18';
  static const String _kTrace_13_19 = 'telemetry_flag_13_19';
  static const String _kTrace_13_20 = 'telemetry_flag_13_20';
  static const String _kTrace_13_21 = 'telemetry_flag_13_21';
  static const String _kTrace_13_22 = 'telemetry_flag_13_22';
  static const String _kTrace_13_23 = 'telemetry_flag_13_23';
}

class _HealthCardState extends State<HealthCard> {
  bool _isHovered = false;

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: widget.metric.color.withOpacity(_isHovered ? 0.15 : 0.08),
              blurRadius: _isHovered ? 12 : 8,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(
            color: widget.metric.color.withOpacity(0.1),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: widget.metric.color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      widget.metric.icon,
                      color: widget.metric.color,
                      size: 24,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: widget.metric.color.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      widget.metric.status,
                      style: TextStyle(
                        color: widget.metric.color,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                widget.metric.title,
                style: const TextStyle(
                  color: Color(0xFF64748B),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    widget.metric.value,
                    style: const TextStyle(
                      color: Color(0xFF1E293B),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    widget.metric.unit,
                    style: const TextStyle(
                      color: Color(0xFF94A3B8),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
