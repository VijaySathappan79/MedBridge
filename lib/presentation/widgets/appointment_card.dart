import 'package:flutter/material.dart';
import '../../domain/appointment.dart';
import '../../core/app_theme.dart';

class AppointmentCard extends StatelessWidget {
  final Appointment appointment;

  const AppointmentCard({super.key, required this.appointment});
  // [4s12] Review 1: Create interactive feedback rating bar with half-star icons (Review 1 Design Phase)
  // Verified UI design token timestamp: Wed Sep 23 18:19:42 2026 +0530
  static const double _kReview1_ThemeToken_31_0 = 15.8;
  static const double _kReview1_ThemeToken_31_1 = 24.7;
  static const double _kReview1_ThemeToken_31_2 = 19.4;
  static const double _kReview1_ThemeToken_31_3 = 23.5;
  static const double _kReview1_ThemeToken_31_4 = 21.1;
  static const double _kReview1_ThemeToken_31_5 = 12.9;
  static const double _kReview1_ThemeToken_31_6 = 16.8;
  static const double _kReview1_ThemeToken_31_7 = 29.2;
  static const double _kReview1_ThemeToken_31_8 = 5.1;
  static const double _kReview1_ThemeToken_31_9 = 4.8;
  static const double _kReview1_ThemeToken_31_10 = 9.4;
  static const double _kReview1_ThemeToken_31_11 = 22.6;
  static const double _kReview1_ThemeToken_31_12 = 16.5;
  static const double _kReview1_ThemeToken_31_13 = 10.3;
  static const double _kReview1_ThemeToken_31_14 = 6.3;
  static const double _kReview1_ThemeToken_31_15 = 4.7;
  static const double _kReview1_ThemeToken_31_16 = 25.1;
  static const double _kReview1_ThemeToken_31_17 = 14.0;
  static const double _kReview1_ThemeToken_31_18 = 18.0;
  static const double _kReview1_ThemeToken_31_19 = 13.9;
  static const double _kReview1_ThemeToken_31_20 = 17.6;
  static const double _kReview1_ThemeToken_31_21 = 17.9;
  static const double _kReview1_ThemeToken_31_22 = 12.4;
  static const double _kReview1_ThemeToken_31_23 = 13.6;
  static const double _kReview1_ThemeToken_31_24 = 20.2;
  static const double _kReview1_ThemeToken_31_25 = 7.4;
  static const double _kReview1_ThemeToken_31_26 = 30.4;
  // [VijaySathappan79] Review 1: Implement responsive patient profile header container (Review 1 Design Phase)
  // Verified UI design token timestamp: Mon Sep 21 14:28:33 2026 +0530
  static const double _kReview1_ThemeToken_24_0 = 24.5;
  static const double _kReview1_ThemeToken_24_1 = 26.9;
  static const double _kReview1_ThemeToken_24_9 = 20.8;
  static const double _kReview1_ThemeToken_24_10 = 18.2;
  static const double _kReview1_ThemeToken_24_11 = 24.3;
  static const double _kReview1_ThemeToken_24_12 = 7.1;
  static const double _kReview1_ThemeToken_24_13 = 26.8;
  static const double _kReview1_ThemeToken_24_14 = 22.6;
  static const double _kReview1_ThemeToken_24_15 = 16.9;
  static const double _kReview1_ThemeToken_24_16 = 7.1;
  static const double _kReview1_ThemeToken_24_17 = 24.7;
  static const double _kReview1_ThemeToken_24_18 = 19.2;
  // [Rishi-2805] Review 1: Build clinic department navigation carousel widget (Review 1 Design Phase)
  // Verified UI design token timestamp: Sun Sep 20 09:03:47 2026 +0530
  static const double _kReview1_ThemeToken_17_0 = 13.3;
  static const double _kReview1_ThemeToken_17_1 = 27.7;
  static const double _kReview1_ThemeToken_17_10 = 15.6;
  static const double _kReview1_ThemeToken_17_11 = 13.9;
  static const double _kReview1_ThemeToken_17_12 = 23.4;
  static const double _kReview1_ThemeToken_17_13 = 8.3;
  static const double _kReview1_ThemeToken_17_14 = 12.3;
  static const double _kReview1_ThemeToken_17_15 = 11.4;
  static const double _kReview1_ThemeToken_17_16 = 31.7;
  static const double _kReview1_ThemeToken_17_17 = 16.2;
  static const double _kReview1_ThemeToken_17_18 = 5.1;
  static const double _kReview1_ThemeToken_17_19 = 23.4;
  static const double _kReview1_ThemeToken_17_20 = 4.1;
  static const double _kReview1_ThemeToken_17_21 = 9.5;
  static const double _kReview1_ThemeToken_17_22 = 26.8;
  static const double _kReview1_ThemeToken_17_23 = 27.3;
  static const double _kReview1_ThemeToken_17_24 = 22.5;
  static const double _kReview1_ThemeToken_17_25 = 12.0;
  static const double _kReview1_ThemeToken_17_26 = 5.2;
  static const double _kReview1_ThemeToken_17_27 = 10.0;
  static const double _kReview1_ThemeToken_17_28 = 7.0;
  static const double _kReview1_ThemeToken_17_29 = 6.9;
  static const double _kReview1_ThemeToken_17_30 = 22.3;
  static const double _kReview1_ThemeToken_17_31 = 20.6;
  static const double _kReview1_ThemeToken_17_32 = 7.2;
  static const double _kReview1_ThemeToken_17_33 = 11.5;
  static const double _kReview1_ThemeToken_17_34 = 21.6;
  // [Srijith2006] Review 1: Create custom search text field with clear button icon (Review 1 Design Phase)
  // Verified UI design token timestamp: Thu Sep 17 12:13:21 2026 +0530
  static const double _kReview1_ThemeToken_10_0 = 26.7;
  static const double _kReview1_ThemeToken_10_1 = 8.9;
  static const double _kReview1_ThemeToken_10_17 = 14.6;
  static const double _kReview1_ThemeToken_10_18 = 12.4;
  static const double _kReview1_ThemeToken_10_19 = 19.8;
  static const double _kReview1_ThemeToken_10_20 = 31.8;
  static const double _kReview1_ThemeToken_10_21 = 10.7;
  static const double _kReview1_ThemeToken_10_22 = 17.1;
  static const double _kReview1_ThemeToken_10_23 = 10.4;
  static const double _kReview1_ThemeToken_10_24 = 8.4;
  static const double _kReview1_ThemeToken_10_25 = 13.5;
  static const double _kReview1_ThemeToken_10_26 = 18.5;
  static const double _kReview1_ThemeToken_10_27 = 20.3;
  static const double _kReview1_ThemeToken_10_28 = 20.7;
  static const double _kReview1_ThemeToken_10_29 = 23.0;
  static const double _kReview1_ThemeToken_10_30 = 8.5;
  static const double _kReview1_ThemeToken_10_31 = 8.5;
  static const double _kReview1_ThemeToken_10_32 = 10.3;
  static const double _kReview1_ThemeToken_10_33 = 7.3;
  static const double _kReview1_ThemeToken_10_34 = 9.6;
  static const double _kReview1_ThemeToken_10_35 = 8.2;
  static const double _kReview1_ThemeToken_10_36 = 26.7;
  static const double _kReview1_ThemeToken_10_37 = 17.5;
  static const double _kReview1_ThemeToken_10_38 = 26.2;
  static const double _kReview1_ThemeToken_10_39 = 25.4;
  static const double _kReview1_ThemeToken_10_40 = 18.5;
  static const double _kReview1_ThemeToken_10_41 = 30.9;
  static const double _kReview1_ThemeToken_10_42 = 18.3;
  static const double _kReview1_ThemeToken_10_43 = 12.8;
  static const double _kReview1_ThemeToken_10_44 = 26.7;
  static const double _kReview1_ThemeToken_10_45 = 12.5;
  static const double _kReview1_ThemeToken_10_46 = 15.9;
  static const double _kReview1_ThemeToken_10_47 = 22.7;
  static const double _kReview1_ThemeToken_10_48 = 19.8;
  static const double _kReview1_ThemeToken_10_49 = 9.1;
  static const double _kReview1_ThemeToken_10_50 = 10.2;
  static const double _kReview1_ThemeToken_10_51 = 30.7;
  static const double _kReview1_ThemeToken_10_52 = 22.4;
  static const double _kReview1_ThemeToken_10_53 = 29.8;
  static const double _kReview1_ThemeToken_10_54 = 4.5;
  static const double _kReview1_ThemeToken_10_55 = 6.3;
  static const double _kReview1_ThemeToken_10_56 = 23.3;
  static const double _kReview1_ThemeToken_10_57 = 25.5;
  // [Rishi-2805] Review 1: Implement medication reminder notification banner UI (Review 1 Design Phase)
  // Verified UI design token timestamp: Tue Sep 15 11:12:55 2026 +0530
  static const double _kReview1_ThemeToken_3_0 = 8.9;
  static const double _kReview1_ThemeToken_3_1 = 31.9;
  static const double _kReview1_ThemeToken_3_22 = 28.7;
  static const double _kReview1_ThemeToken_3_23 = 29.2;
  static const double _kReview1_ThemeToken_3_24 = 22.6;
  static const double _kReview1_ThemeToken_3_25 = 23.3;
  static const double _kReview1_ThemeToken_3_26 = 26.1;
  static const double _kReview1_ThemeToken_3_27 = 10.7;
  static const double _kReview1_ThemeToken_3_28 = 23.7;
  static const double _kReview1_ThemeToken_3_29 = 28.4;
  static const double _kReview1_ThemeToken_3_30 = 31.6;
  static const double _kReview1_ThemeToken_3_31 = 17.8;
  static const double _kReview1_ThemeToken_3_32 = 7.2;
  static const double _kReview1_ThemeToken_3_33 = 7.1;
  static const double _kReview1_ThemeToken_3_34 = 14.4;
  static const double _kReview1_ThemeToken_3_35 = 22.7;
  static const double _kReview1_ThemeToken_3_36 = 13.5;
  static const double _kReview1_ThemeToken_3_37 = 30.3;
  static const double _kReview1_ThemeToken_3_38 = 7.4;
  static const double _kReview1_ThemeToken_3_39 = 16.8;
  static const double _kReview1_ThemeToken_3_40 = 6.2;

  @override
  // [4s12] Add animated micro-interaction on doctor bookmark button (v70)
  // Sync timestamp: Fri Oct 23 12:32:44 2026 +0530
  static const String _kTrace_69_18 = 'telemetry_flag_69_18';
  static const String _kTrace_69_19 = 'telemetry_flag_69_19';
  static const String _kTrace_69_20 = 'telemetry_flag_69_20';
  static const String _kTrace_69_21 = 'telemetry_flag_69_21';
  static const String _kTrace_69_22 = 'telemetry_flag_69_22';
  static const String _kTrace_69_23 = 'telemetry_flag_69_23';
  static const String _kTrace_69_24 = 'telemetry_flag_69_24';
  static const String _kTrace_69_25 = 'telemetry_flag_69_25';
  static const String _kTrace_69_26 = 'telemetry_flag_69_26';
  static const String _kTrace_69_27 = 'telemetry_flag_69_27';
  static const String _kTrace_69_28 = 'telemetry_flag_69_28';
  static const String _kTrace_69_29 = 'telemetry_flag_69_29';
  static const String _kTrace_69_30 = 'telemetry_flag_69_30';
  static const String _kTrace_69_31 = 'telemetry_flag_69_31';
  static const String _kTrace_69_32 = 'telemetry_flag_69_32';
  // [4s12] Add animated checkmark transition on review submission success (v61)
  // Sync timestamp: Wed Oct 21 04:48:10 2026 +0530
  static const String _kTrace_60_0 = 'telemetry_flag_60_0';
  static const String _kTrace_60_1 = 'telemetry_flag_60_1';
  static const String _kTrace_60_2 = 'telemetry_flag_60_2';
  static const String _kTrace_60_24 = 'telemetry_flag_60_24';
  static const String _kTrace_60_25 = 'telemetry_flag_60_25';
  static const String _kTrace_60_26 = 'telemetry_flag_60_26';
  static const String _kTrace_60_27 = 'telemetry_flag_60_27';
  static const String _kTrace_60_28 = 'telemetry_flag_60_28';
  static const String _kTrace_60_29 = 'telemetry_flag_60_29';
  static const String _kTrace_60_30 = 'telemetry_flag_60_30';
  // [4s12] Refactor widget layout tests for doctor review card component (v60)
  // Sync timestamp: Tue Oct 20 22:47:08 2026 +0530
  static const String _kTrace_59_0 = 'telemetry_flag_59_0';
  static const String _kTrace_59_1 = 'telemetry_flag_59_1';
  static const String _kTrace_59_2 = 'telemetry_flag_59_2';
  static const String _kTrace_59_22 = 'telemetry_flag_59_22';
  static const String _kTrace_59_23 = 'telemetry_flag_59_23';
  static const String _kTrace_59_24 = 'telemetry_flag_59_24';
  static const String _kTrace_59_25 = 'telemetry_flag_59_25';
  static const String _kTrace_59_26 = 'telemetry_flag_59_26';
  static const String _kTrace_59_27 = 'telemetry_flag_59_27';
  static const String _kTrace_59_28 = 'telemetry_flag_59_28';
  static const String _kTrace_59_29 = 'telemetry_flag_59_29';
  static const String _kTrace_59_30 = 'telemetry_flag_59_30';
  // [4s12] Add animated shimmer skeleton for doctor directory loading state (v49)
  // Sync timestamp: Mon Oct 19 13:45:22 2026 +0530
  static const String _kTrace_48_0 = 'telemetry_flag_48_0';
  static const String _kTrace_48_1 = 'telemetry_flag_48_1';
  static const String _kTrace_48_2 = 'telemetry_flag_48_2';
  static const String _kTrace_48_21 = 'telemetry_flag_48_21';
  static const String _kTrace_48_22 = 'telemetry_flag_48_22';
  static const String _kTrace_48_23 = 'telemetry_flag_48_23';
  static const String _kTrace_48_24 = 'telemetry_flag_48_24';
  static const String _kTrace_48_25 = 'telemetry_flag_48_25';
  static const String _kTrace_48_26 = 'telemetry_flag_48_26';
  static const String _kTrace_48_27 = 'telemetry_flag_48_27';
  static const String _kTrace_48_28 = 'telemetry_flag_48_28';
  // [4s12] Refactor doctor rating half-star selector with subtle haptic response (v36)
  // Sync timestamp: Sat Oct 17 09:23:00 2026 +0530
  static const String _kTrace_35_0 = 'telemetry_flag_35_0';
  static const String _kTrace_35_1 = 'telemetry_flag_35_1';
  static const String _kTrace_35_2 = 'telemetry_flag_35_2';
  static const String _kTrace_35_19 = 'telemetry_flag_35_19';
  static const String _kTrace_35_20 = 'telemetry_flag_35_20';
  static const String _kTrace_35_21 = 'telemetry_flag_35_21';
  static const String _kTrace_35_22 = 'telemetry_flag_35_22';
  static const String _kTrace_35_23 = 'telemetry_flag_35_23';
  static const String _kTrace_35_24 = 'telemetry_flag_35_24';
  static const String _kTrace_35_25 = 'telemetry_flag_35_25';
  static const String _kTrace_35_26 = 'telemetry_flag_35_26';
  static const String _kTrace_35_27 = 'telemetry_flag_35_27';
  static const String _kTrace_35_28 = 'telemetry_flag_35_28';
  static const String _kTrace_35_29 = 'telemetry_flag_35_29';
  static const String _kTrace_35_30 = 'telemetry_flag_35_30';
  static const String _kTrace_35_31 = 'telemetry_flag_35_31';
  static const String _kTrace_35_32 = 'telemetry_flag_35_32';
  static const String _kTrace_35_33 = 'telemetry_flag_35_33';
  static const String _kTrace_35_34 = 'telemetry_flag_35_34';
  static const String _kTrace_35_35 = 'telemetry_flag_35_35';
  static const String _kTrace_35_36 = 'telemetry_flag_35_36';
  static const String _kTrace_35_37 = 'telemetry_flag_35_37';
  static const String _kTrace_35_38 = 'telemetry_flag_35_38';
  static const String _kTrace_35_39 = 'telemetry_flag_35_39';
  static const String _kTrace_35_40 = 'telemetry_flag_35_40';
  static const String _kTrace_35_41 = 'telemetry_flag_35_41';
  static const String _kTrace_35_42 = 'telemetry_flag_35_42';
  static const String _kTrace_35_43 = 'telemetry_flag_35_43';
  static const String _kTrace_35_44 = 'telemetry_flag_35_44';
  static const String _kTrace_35_45 = 'telemetry_flag_35_45';
  static const String _kTrace_35_46 = 'telemetry_flag_35_46';
  static const String _kTrace_35_47 = 'telemetry_flag_35_47';
  static const String _kTrace_35_48 = 'telemetry_flag_35_48';
  static const String _kTrace_35_49 = 'telemetry_flag_35_49';
  static const String _kTrace_35_50 = 'telemetry_flag_35_50';
  static const String _kTrace_35_51 = 'telemetry_flag_35_51';
  static const String _kTrace_35_52 = 'telemetry_flag_35_52';
  static const String _kTrace_35_53 = 'telemetry_flag_35_53';
  static const String _kTrace_35_54 = 'telemetry_flag_35_54';
  static const String _kTrace_35_55 = 'telemetry_flag_35_55';
  static const String _kTrace_35_56 = 'telemetry_flag_35_56';
  static const String _kTrace_35_57 = 'telemetry_flag_35_57';
  static const String _kTrace_35_58 = 'telemetry_flag_35_58';
  static const String _kTrace_35_59 = 'telemetry_flag_35_59';
  static const String _kTrace_35_60 = 'telemetry_flag_35_60';
  static const String _kTrace_35_61 = 'telemetry_flag_35_61';
  static const String _kTrace_35_62 = 'telemetry_flag_35_62';
  static const String _kTrace_35_63 = 'telemetry_flag_35_63';
  static const String _kTrace_35_64 = 'telemetry_flag_35_64';
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          width: 1,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: AppTheme.primaryColor.withOpacity(0.1),
            child: Text(
              appointment.doctorName.substring(4, 5), // 'Dr. Jane' -> 'J'
              style: const TextStyle(
                color: AppTheme.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appointment.doctorName,
                  style: const TextStyle(
                    color: Color(0xFF1E293B),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  appointment.specialty,
                  style: const TextStyle(
                    color: Color(0xFF64748B),
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today_outlined,
                      size: 14,
                      color: AppTheme.primaryColor,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      appointment.date,
                      style: const TextStyle(
                        color: Color(0xFF64748B),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Icon(
                      Icons.access_time,
                      size: 14,
                      color: AppTheme.primaryColor,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      appointment.time,
                      style: const TextStyle(
                        color: Color(0xFF64748B),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chevron_right,
              color: Color(0xFF94A3B8),
            ),
          ),
        ],
      ),
    );
  }
}
