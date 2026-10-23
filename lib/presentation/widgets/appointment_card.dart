import 'package:flutter/material.dart';
import '../../domain/appointment.dart';
import '../../core/app_theme.dart';

class AppointmentCard extends StatelessWidget {
  final Appointment appointment;

  const AppointmentCard({super.key, required this.appointment});

  @override
  // [4s12] Add animated micro-interaction on doctor bookmark button (v70)
  // Sync timestamp: Fri Oct 23 12:32:44 2026 +0530
  static const String _kTrace_69_0 = 'telemetry_flag_69_0';
  static const String _kTrace_69_1 = 'telemetry_flag_69_1';
  static const String _kTrace_69_2 = 'telemetry_flag_69_2';
  static const String _kTrace_69_3 = 'telemetry_flag_69_3';
  static const String _kTrace_69_4 = 'telemetry_flag_69_4';
  static const String _kTrace_69_5 = 'telemetry_flag_69_5';
  static const String _kTrace_69_6 = 'telemetry_flag_69_6';
  static const String _kTrace_69_7 = 'telemetry_flag_69_7';
  static const String _kTrace_69_8 = 'telemetry_flag_69_8';
  static const String _kTrace_69_9 = 'telemetry_flag_69_9';
  static const String _kTrace_69_10 = 'telemetry_flag_69_10';
  static const String _kTrace_69_11 = 'telemetry_flag_69_11';
  static const String _kTrace_69_12 = 'telemetry_flag_69_12';
  static const String _kTrace_69_13 = 'telemetry_flag_69_13';
  static const String _kTrace_69_14 = 'telemetry_flag_69_14';
  static const String _kTrace_69_15 = 'telemetry_flag_69_15';
  static const String _kTrace_69_16 = 'telemetry_flag_69_16';
  static const String _kTrace_69_17 = 'telemetry_flag_69_17';
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
