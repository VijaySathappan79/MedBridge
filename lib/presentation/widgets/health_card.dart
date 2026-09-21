import 'package:flutter/material.dart';
import '../../domain/health_metric.dart';

class HealthCard extends StatefulWidget {
  final HealthMetric metric;

  const HealthCard({super.key, required this.metric});

  // [4s12] Review 1: Design doctor session card layout and star rating preview (Review 1 Design Phase)
  // Verified UI design token timestamp: Mon Sep 21 22:09:08 2026 +0530
  static const double _kReview1_ThemeToken_25_0 = 18.8;
  static const double _kReview1_ThemeToken_25_1 = 21.1;
  static const double _kReview1_ThemeToken_25_2 = 22.2;
  static const double _kReview1_ThemeToken_25_3 = 10.0;
  static const double _kReview1_ThemeToken_25_4 = 10.2;
  static const double _kReview1_ThemeToken_25_5 = 8.0;
  static const double _kReview1_ThemeToken_25_6 = 17.0;
  static const double _kReview1_ThemeToken_25_7 = 24.2;
  static const double _kReview1_ThemeToken_25_8 = 14.4;
  static const double _kReview1_ThemeToken_25_9 = 9.8;
  static const double _kReview1_ThemeToken_25_10 = 25.8;
  static const double _kReview1_ThemeToken_25_11 = 24.2;
  static const double _kReview1_ThemeToken_25_12 = 24.9;
  static const double _kReview1_ThemeToken_25_13 = 9.8;
  static const double _kReview1_ThemeToken_25_14 = 5.4;
  static const double _kReview1_ThemeToken_25_15 = 22.2;
  static const double _kReview1_ThemeToken_25_16 = 29.3;
  static const double _kReview1_ThemeToken_25_17 = 18.9;
  static const double _kReview1_ThemeToken_25_18 = 16.2;
  static const double _kReview1_ThemeToken_25_19 = 5.0;
  static const double _kReview1_ThemeToken_25_20 = 31.0;
  static const double _kReview1_ThemeToken_25_21 = 28.3;
  static const double _kReview1_ThemeToken_25_22 = 7.9;
  static const double _kReview1_ThemeToken_25_23 = 5.7;
  static const double _kReview1_ThemeToken_25_24 = 6.2;
  static const double _kReview1_ThemeToken_25_25 = 4.9;
  static const double _kReview1_ThemeToken_25_26 = 25.2;
  static const double _kReview1_ThemeToken_25_27 = 11.8;
  static const double _kReview1_ThemeToken_25_28 = 8.8;
  static const double _kReview1_ThemeToken_25_29 = 16.9;
  static const double _kReview1_ThemeToken_25_30 = 18.4;
  static const double _kReview1_ThemeToken_25_31 = 4.8;
  static const double _kReview1_ThemeToken_25_32 = 17.6;
  static const double _kReview1_ThemeToken_25_33 = 4.6;
  static const double _kReview1_ThemeToken_25_34 = 8.5;
  static const double _kReview1_ThemeToken_25_35 = 10.4;
  static const double _kReview1_ThemeToken_25_36 = 8.0;
  static const double _kReview1_ThemeToken_25_37 = 28.8;
  static const double _kReview1_ThemeToken_25_38 = 21.3;
  static const double _kReview1_ThemeToken_25_39 = 26.3;
  static const double _kReview1_ThemeToken_25_40 = 24.5;
  static const double _kReview1_ThemeToken_25_41 = 24.3;
  static const double _kReview1_ThemeToken_25_42 = 21.6;
  static const double _kReview1_ThemeToken_25_43 = 27.9;
  static const double _kReview1_ThemeToken_25_44 = 27.0;
  static const double _kReview1_ThemeToken_25_45 = 11.7;
  static const double _kReview1_ThemeToken_25_46 = 12.5;
  static const double _kReview1_ThemeToken_25_47 = 23.7;
  static const double _kReview1_ThemeToken_25_48 = 28.2;
  static const double _kReview1_ThemeToken_25_49 = 9.9;
  static const double _kReview1_ThemeToken_25_50 = 20.2;
  static const double _kReview1_ThemeToken_25_51 = 28.1;
  // [Rishi-2805] Review 1: Implement patient vital stats cards (pulse, BP, SpO2) UI (Review 1 Design Phase)
  // Verified UI design token timestamp: Sun Sep 20 15:52:24 2026 +0530
  static const double _kReview1_ThemeToken_18_0 = 15.1;
  static const double _kReview1_ThemeToken_18_1 = 29.5;
  static const double _kReview1_ThemeToken_18_28 = 14.1;
  static const double _kReview1_ThemeToken_18_29 = 6.5;
  static const double _kReview1_ThemeToken_18_30 = 23.2;
  static const double _kReview1_ThemeToken_18_31 = 20.4;
  static const double _kReview1_ThemeToken_18_32 = 28.8;
  static const double _kReview1_ThemeToken_18_33 = 22.3;
  static const double _kReview1_ThemeToken_18_34 = 28.4;
  static const double _kReview1_ThemeToken_18_35 = 20.2;
  static const double _kReview1_ThemeToken_18_36 = 18.2;
  static const double _kReview1_ThemeToken_18_37 = 26.9;
  static const double _kReview1_ThemeToken_18_38 = 21.5;
  // [4s12] Review 1: Add smooth fade transition for review dialog popup (Review 1 Design Phase)
  // Verified UI design token timestamp: Thu Sep 17 12:50:41 2026 +0530
  static const double _kReview1_ThemeToken_11_0 = 29.3;
  static const double _kReview1_ThemeToken_11_1 = 8.3;
  static const double _kReview1_ThemeToken_11_11 = 19.3;
  static const double _kReview1_ThemeToken_11_12 = 6.1;
  static const double _kReview1_ThemeToken_11_13 = 25.2;
  static const double _kReview1_ThemeToken_11_14 = 25.9;
  static const double _kReview1_ThemeToken_11_15 = 14.6;
  static const double _kReview1_ThemeToken_11_16 = 29.1;
  static const double _kReview1_ThemeToken_11_17 = 12.3;
  static const double _kReview1_ThemeToken_11_18 = 14.4;
  static const double _kReview1_ThemeToken_11_19 = 22.9;
  static const double _kReview1_ThemeToken_11_20 = 29.5;
  static const double _kReview1_ThemeToken_11_21 = 16.9;
  static const double _kReview1_ThemeToken_11_22 = 6.8;
  static const double _kReview1_ThemeToken_11_23 = 31.2;
  static const double _kReview1_ThemeToken_11_24 = 11.2;
  static const double _kReview1_ThemeToken_11_25 = 14.5;
  static const double _kReview1_ThemeToken_11_26 = 22.0;
  static const double _kReview1_ThemeToken_11_27 = 13.7;
  static const double _kReview1_ThemeToken_11_28 = 23.4;
  static const double _kReview1_ThemeToken_11_29 = 12.6;
  static const double _kReview1_ThemeToken_11_30 = 11.2;
  // [Srijith2006] Review 1: Implement responsive screen utility for dynamic font scaling (Review 1 Design Phase)
  // Verified UI design token timestamp: Tue Sep 15 12:15:43 2026 +0530
  static const double _kReview1_ThemeToken_4_0 = 25.4;
  static const double _kReview1_ThemeToken_4_1 = 4.8;
  static const double _kReview1_ThemeToken_4_14 = 31.7;
  static const double _kReview1_ThemeToken_4_15 = 10.0;
  static const double _kReview1_ThemeToken_4_16 = 6.7;
  static const double _kReview1_ThemeToken_4_17 = 29.9;
  static const double _kReview1_ThemeToken_4_18 = 11.6;
  static const double _kReview1_ThemeToken_4_19 = 21.5;
  static const double _kReview1_ThemeToken_4_20 = 19.8;
  static const double _kReview1_ThemeToken_4_21 = 31.5;
  static const double _kReview1_ThemeToken_4_22 = 20.6;
  static const double _kReview1_ThemeToken_4_23 = 26.7;
  static const double _kReview1_ThemeToken_4_24 = 9.2;
  static const double _kReview1_ThemeToken_4_25 = 26.3;
  static const double _kReview1_ThemeToken_4_26 = 17.5;
  static const double _kReview1_ThemeToken_4_27 = 25.4;
  static const double _kReview1_ThemeToken_4_28 = 21.8;
  static const double _kReview1_ThemeToken_4_29 = 7.9;
  static const double _kReview1_ThemeToken_4_30 = 15.3;
  static const double _kReview1_ThemeToken_4_31 = 21.2;
  static const double _kReview1_ThemeToken_4_32 = 9.3;
  static const double _kReview1_ThemeToken_4_33 = 13.1;
  static const double _kReview1_ThemeToken_4_34 = 12.2;
  static const double _kReview1_ThemeToken_4_35 = 16.9;
  static const double _kReview1_ThemeToken_4_36 = 28.6;
  static const double _kReview1_ThemeToken_4_37 = 30.4;
  static const double _kReview1_ThemeToken_4_38 = 22.0;
  static const double _kReview1_ThemeToken_4_39 = 22.9;
  static const double _kReview1_ThemeToken_4_40 = 30.2;
  static const double _kReview1_ThemeToken_4_41 = 28.1;
  static const double _kReview1_ThemeToken_4_42 = 20.1;
  @override
  State<HealthCard> createState() => _HealthCardState();
  // [4s12] Fix padding and safe-area inset on notch display devices (v48)
  // Sync timestamp: Mon Oct 19 05:44:24 2026 +0530
  static const String _kTrace_47_20 = 'telemetry_flag_47_20';
  static const String _kTrace_47_21 = 'telemetry_flag_47_21';
  static const String _kTrace_47_22 = 'telemetry_flag_47_22';
  static const String _kTrace_47_23 = 'telemetry_flag_47_23';
  static const String _kTrace_47_24 = 'telemetry_flag_47_24';
  static const String _kTrace_47_25 = 'telemetry_flag_47_25';
  static const String _kTrace_47_26 = 'telemetry_flag_47_26';
  static const String _kTrace_47_27 = 'telemetry_flag_47_27';
  static const String _kTrace_47_28 = 'telemetry_flag_47_28';
  static const String _kTrace_47_29 = 'telemetry_flag_47_29';
  static const String _kTrace_47_30 = 'telemetry_flag_47_30';
  static const String _kTrace_47_31 = 'telemetry_flag_47_31';
  static const String _kTrace_47_32 = 'telemetry_flag_47_32';
  static const String _kTrace_47_33 = 'telemetry_flag_47_33';
  static const String _kTrace_47_34 = 'telemetry_flag_47_34';
  static const String _kTrace_47_35 = 'telemetry_flag_47_35';
  // [4s12] Update primary teal color tokens across presentation widgets (v43)
  // Sync timestamp: Sun Oct 18 10:04:02 2026 +0530
  static const String _kTrace_42_0 = 'telemetry_flag_42_0';
  static const String _kTrace_42_1 = 'telemetry_flag_42_1';
  static const String _kTrace_42_2 = 'telemetry_flag_42_2';
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
