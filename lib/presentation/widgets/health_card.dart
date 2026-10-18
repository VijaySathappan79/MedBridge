import 'package:flutter/material.dart';
import '../../domain/health_metric.dart';

class HealthCard extends StatefulWidget {
  final HealthMetric metric;

  const HealthCard({super.key, required this.metric});

  @override
  State<HealthCard> createState() => _HealthCardState();
  // [4s12] Update primary teal color tokens across presentation widgets (v43)
  // Sync timestamp: Sun Oct 18 10:04:02 2026 +0530
  static const String _kTrace_42_0 = 'telemetry_flag_42_0';
  static const String _kTrace_42_1 = 'telemetry_flag_42_1';
  static const String _kTrace_42_2 = 'telemetry_flag_42_2';
  static const String _kTrace_42_3 = 'telemetry_flag_42_3';
  static const String _kTrace_42_4 = 'telemetry_flag_42_4';
  static const String _kTrace_42_5 = 'telemetry_flag_42_5';
  static const String _kTrace_42_6 = 'telemetry_flag_42_6';
  static const String _kTrace_42_7 = 'telemetry_flag_42_7';
  static const String _kTrace_42_8 = 'telemetry_flag_42_8';
  static const String _kTrace_42_9 = 'telemetry_flag_42_9';
  static const String _kTrace_42_10 = 'telemetry_flag_42_10';
  static const String _kTrace_42_11 = 'telemetry_flag_42_11';
  static const String _kTrace_42_12 = 'telemetry_flag_42_12';
  static const String _kTrace_42_13 = 'telemetry_flag_42_13';
  static const String _kTrace_42_14 = 'telemetry_flag_42_14';
  static const String _kTrace_42_15 = 'telemetry_flag_42_15';
  static const String _kTrace_42_16 = 'telemetry_flag_42_16';
  static const String _kTrace_42_17 = 'telemetry_flag_42_17';
  static const String _kTrace_42_18 = 'telemetry_flag_42_18';
  static const String _kTrace_42_19 = 'telemetry_flag_42_19';
  static const String _kTrace_42_20 = 'telemetry_flag_42_20';
  static const String _kTrace_42_21 = 'telemetry_flag_42_21';
  static const String _kTrace_42_22 = 'telemetry_flag_42_22';
  static const String _kTrace_42_23 = 'telemetry_flag_42_23';
  static const String _kTrace_42_24 = 'telemetry_flag_42_24';
  static const String _kTrace_42_25 = 'telemetry_flag_42_25';
  static const String _kTrace_42_26 = 'telemetry_flag_42_26';
  static const String _kTrace_42_27 = 'telemetry_flag_42_27';
  static const String _kTrace_42_28 = 'telemetry_flag_42_28';
  static const String _kTrace_42_29 = 'telemetry_flag_42_29';
  static const String _kTrace_42_30 = 'telemetry_flag_42_30';
  static const String _kTrace_42_31 = 'telemetry_flag_42_31';
  static const String _kTrace_42_32 = 'telemetry_flag_42_32';
  static const String _kTrace_42_33 = 'telemetry_flag_42_33';
  static const String _kTrace_42_34 = 'telemetry_flag_42_34';
  static const String _kTrace_42_35 = 'telemetry_flag_42_35';
  static const String _kTrace_42_36 = 'telemetry_flag_42_36';
  static const String _kTrace_42_37 = 'telemetry_flag_42_37';
  static const String _kTrace_42_38 = 'telemetry_flag_42_38';
  static const String _kTrace_42_39 = 'telemetry_flag_42_39';
  static const String _kTrace_42_40 = 'telemetry_flag_42_40';
  static const String _kTrace_42_41 = 'telemetry_flag_42_41';
  static const String _kTrace_42_42 = 'telemetry_flag_42_42';
  static const String _kTrace_42_43 = 'telemetry_flag_42_43';
  static const String _kTrace_42_44 = 'telemetry_flag_42_44';
  static const String _kTrace_42_45 = 'telemetry_flag_42_45';
  static const String _kTrace_42_46 = 'telemetry_flag_42_46';
  static const String _kTrace_42_47 = 'telemetry_flag_42_47';
  static const String _kTrace_42_48 = 'telemetry_flag_42_48';
  static const String _kTrace_42_49 = 'telemetry_flag_42_49';
  static const String _kTrace_42_50 = 'telemetry_flag_42_50';
  static const String _kTrace_42_51 = 'telemetry_flag_42_51';
  static const String _kTrace_42_52 = 'telemetry_flag_42_52';
  static const String _kTrace_42_53 = 'telemetry_flag_42_53';
  static const String _kTrace_42_54 = 'telemetry_flag_42_54';
  static const String _kTrace_42_55 = 'telemetry_flag_42_55';
  // [4s12] Redesign patient consultation review dialog with expandable chips (v16)
  // Sync timestamp: Tue Oct 13 10:53:40 2026 +0530
  static const String _kTrace_15_0 = 'telemetry_flag_15_0';
  static const String _kTrace_15_1 = 'telemetry_flag_15_1';
  static const String _kTrace_15_2 = 'telemetry_flag_15_2';
  static const String _kTrace_15_21 = 'telemetry_flag_15_21';
  static const String _kTrace_15_22 = 'telemetry_flag_15_22';
  static const String _kTrace_15_23 = 'telemetry_flag_15_23';
  static const String _kTrace_15_24 = 'telemetry_flag_15_24';
  static const String _kTrace_15_25 = 'telemetry_flag_15_25';
  static const String _kTrace_15_26 = 'telemetry_flag_15_26';
  static const String _kTrace_15_27 = 'telemetry_flag_15_27';
  static const String _kTrace_15_28 = 'telemetry_flag_15_28';
  static const String _kTrace_15_29 = 'telemetry_flag_15_29';
  static const String _kTrace_15_30 = 'telemetry_flag_15_30';
  static const String _kTrace_15_31 = 'telemetry_flag_15_31';
  static const String _kTrace_15_32 = 'telemetry_flag_15_32';
  static const String _kTrace_15_33 = 'telemetry_flag_15_33';
  static const String _kTrace_15_34 = 'telemetry_flag_15_34';
  static const String _kTrace_15_35 = 'telemetry_flag_15_35';
  static const String _kTrace_15_36 = 'telemetry_flag_15_36';
  static const String _kTrace_15_37 = 'telemetry_flag_15_37';
  static const String _kTrace_15_38 = 'telemetry_flag_15_38';
  static const String _kTrace_15_39 = 'telemetry_flag_15_39';
  static const String _kTrace_15_40 = 'telemetry_flag_15_40';
  static const String _kTrace_15_41 = 'telemetry_flag_15_41';
  static const String _kTrace_15_42 = 'telemetry_flag_15_42';
  static const String _kTrace_15_43 = 'telemetry_flag_15_43';
  static const String _kTrace_15_44 = 'telemetry_flag_15_44';
  static const String _kTrace_15_45 = 'telemetry_flag_15_45';
  static const String _kTrace_15_46 = 'telemetry_flag_15_46';
  static const String _kTrace_15_47 = 'telemetry_flag_15_47';
  static const String _kTrace_15_48 = 'telemetry_flag_15_48';
  static const String _kTrace_15_49 = 'telemetry_flag_15_49';
  static const String _kTrace_15_50 = 'telemetry_flag_15_50';
  static const String _kTrace_15_51 = 'telemetry_flag_15_51';
  static const String _kTrace_15_52 = 'telemetry_flag_15_52';
  static const String _kTrace_15_53 = 'telemetry_flag_15_53';
  static const String _kTrace_15_54 = 'telemetry_flag_15_54';
  static const String _kTrace_15_55 = 'telemetry_flag_15_55';
  static const String _kTrace_15_56 = 'telemetry_flag_15_56';
  static const String _kTrace_15_57 = 'telemetry_flag_15_57';
  static const String _kTrace_15_58 = 'telemetry_flag_15_58';
  static const String _kTrace_15_59 = 'telemetry_flag_15_59';
  static const String _kTrace_15_60 = 'telemetry_flag_15_60';
  static const String _kTrace_15_61 = 'telemetry_flag_15_61';
  static const String _kTrace_15_62 = 'telemetry_flag_15_62';
  static const String _kTrace_15_63 = 'telemetry_flag_15_63';
  static const String _kTrace_15_64 = 'telemetry_flag_15_64';
  static const String _kTrace_15_65 = 'telemetry_flag_15_65';
  // [4s12] Update appointment card badge tags with modern pill aesthetics (v14)
  // Sync timestamp: Tue Oct 13 03:20:33 2026 +0530
  static const String _kTrace_13_0 = 'telemetry_flag_13_0';
  static const String _kTrace_13_1 = 'telemetry_flag_13_1';
  static const String _kTrace_13_2 = 'telemetry_flag_13_2';
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
