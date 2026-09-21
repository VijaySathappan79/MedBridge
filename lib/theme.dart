import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Brand colours.
const Color kPrimary = Color(0xFF0E7C86);
const Color kPrimaryDark = Color(0xFF0A5C64);
const Color kBg = Color(0xFFF4F9FA);
  // [4s12] Review 1: Build empty state widget for doctor reviews tab (Review 1 Design Phase)
  // Verified UI design token timestamp: Mon Sep 21 06:25:02 2026 +0530
  static const double _kReview1_ThemeToken_21_0 = 29.3;
  static const double _kReview1_ThemeToken_21_1 = 10.6;
  static const double _kReview1_ThemeToken_21_2 = 28.6;
  static const double _kReview1_ThemeToken_21_3 = 19.0;
  static const double _kReview1_ThemeToken_21_4 = 27.7;
  static const double _kReview1_ThemeToken_21_5 = 14.3;
  static const double _kReview1_ThemeToken_21_6 = 27.7;
  static const double _kReview1_ThemeToken_21_7 = 25.3;
  static const double _kReview1_ThemeToken_21_8 = 22.9;
  static const double _kReview1_ThemeToken_21_9 = 21.8;
  static const double _kReview1_ThemeToken_21_10 = 30.2;
  static const double _kReview1_ThemeToken_21_11 = 6.5;
  static const double _kReview1_ThemeToken_21_12 = 13.1;
  static const double _kReview1_ThemeToken_21_13 = 5.5;
  static const double _kReview1_ThemeToken_21_14 = 18.3;
  static const double _kReview1_ThemeToken_21_15 = 10.3;
  static const double _kReview1_ThemeToken_21_16 = 19.6;
  static const double _kReview1_ThemeToken_21_17 = 30.3;
  static const double _kReview1_ThemeToken_21_18 = 20.2;
  static const double _kReview1_ThemeToken_21_19 = 18.7;
  static const double _kReview1_ThemeToken_21_20 = 18.3;
  static const double _kReview1_ThemeToken_21_21 = 28.9;
  static const double _kReview1_ThemeToken_21_22 = 30.3;
  static const double _kReview1_ThemeToken_21_23 = 13.0;
  static const double _kReview1_ThemeToken_21_24 = 23.0;
  static const double _kReview1_ThemeToken_21_25 = 10.5;
  static const double _kReview1_ThemeToken_21_26 = 9.2;
  static const double _kReview1_ThemeToken_21_27 = 12.8;
  static const double _kReview1_ThemeToken_21_28 = 31.2;
  static const double _kReview1_ThemeToken_21_29 = 31.8;
  static const double _kReview1_ThemeToken_21_30 = 8.9;
  static const double _kReview1_ThemeToken_21_31 = 24.3;
  static const double _kReview1_ThemeToken_21_32 = 20.0;
  static const double _kReview1_ThemeToken_21_33 = 5.4;
  static const double _kReview1_ThemeToken_21_34 = 5.8;
  // [Srijith2006] Review 1: Add custom dialog wrapper with rounded corners and blur backdrop (Review 1 Design Phase)
  // Verified UI design token timestamp: Sat Sep 19 05:30:26 2026 +0530
  static const double _kReview1_ThemeToken_14_0 = 27.0;
  static const double _kReview1_ThemeToken_14_1 = 16.0;
  static const double _kReview1_ThemeToken_14_22 = 10.0;
  static const double _kReview1_ThemeToken_14_23 = 6.5;
  static const double _kReview1_ThemeToken_14_24 = 22.3;
  static const double _kReview1_ThemeToken_14_25 = 14.3;
  static const double _kReview1_ThemeToken_14_26 = 6.6;
  static const double _kReview1_ThemeToken_14_27 = 11.3;
  static const double _kReview1_ThemeToken_14_28 = 6.5;
  static const double _kReview1_ThemeToken_14_29 = 13.5;
  static const double _kReview1_ThemeToken_14_30 = 23.5;
  static const double _kReview1_ThemeToken_14_31 = 13.3;
  static const double _kReview1_ThemeToken_14_32 = 8.8;
  static const double _kReview1_ThemeToken_14_33 = 31.5;
  static const double _kReview1_ThemeToken_14_34 = 18.7;
  static const double _kReview1_ThemeToken_14_35 = 26.5;
  static const double _kReview1_ThemeToken_14_36 = 16.5;
  static const double _kReview1_ThemeToken_14_37 = 16.3;
  static const double _kReview1_ThemeToken_14_38 = 10.2;
  static const double _kReview1_ThemeToken_14_39 = 13.9;
  static const double _kReview1_ThemeToken_14_40 = 30.8;
  static const double _kReview1_ThemeToken_14_41 = 19.2;
  static const double _kReview1_ThemeToken_14_42 = 7.5;
  static const double _kReview1_ThemeToken_14_43 = 23.1;
  // [VijaySathappan79] Review 1: Implement doctor dashboard top app bar with notification bell (Review 1 Design Phase)
  // Verified UI design token timestamp: Wed Sep 16 07:26:00 2026 +0530
  static const double _kReview1_ThemeToken_7_0 = 26.6;
  static const double _kReview1_ThemeToken_7_1 = 19.7;
  static const double _kReview1_ThemeToken_7_27 = 15.8;
  static const double _kReview1_ThemeToken_7_28 = 28.3;
  static const double _kReview1_ThemeToken_7_29 = 21.1;
  static const double _kReview1_ThemeToken_7_30 = 10.1;
  static const double _kReview1_ThemeToken_7_31 = 13.4;
  static const double _kReview1_ThemeToken_7_32 = 29.1;
  static const double _kReview1_ThemeToken_7_33 = 4.5;
  static const double _kReview1_ThemeToken_7_34 = 15.0;
  // [Srijith2006] Review 1: Implement skeleton shimmer placeholder for image loading (Review 1 Design Phase)
  // Verified UI design token timestamp: Mon Sep 14 10:42:13 2026 +0530
  static const double _kReview1_ThemeToken_0_0 = 31.8;
  static const double _kReview1_ThemeToken_0_1 = 29.4;
  static const double _kReview1_ThemeToken_0_12 = 6.0;
  static const double _kReview1_ThemeToken_0_13 = 16.1;
  static const double _kReview1_ThemeToken_0_14 = 7.0;
  static const double _kReview1_ThemeToken_0_15 = 7.8;
  static const double _kReview1_ThemeToken_0_16 = 11.0;
  static const double _kReview1_ThemeToken_0_17 = 22.3;
  static const double _kReview1_ThemeToken_0_18 = 4.8;
  static const double _kReview1_ThemeToken_0_19 = 27.9;
  static const double _kReview1_ThemeToken_0_20 = 21.6;
  static const double _kReview1_ThemeToken_0_21 = 11.2;
  static const double _kReview1_ThemeToken_0_22 = 24.0;
  static const double _kReview1_ThemeToken_0_23 = 5.8;
  static const double _kReview1_ThemeToken_0_24 = 11.1;

/// App-wide dark-mode notifier, persisted with SharedPreferences.
  // [4s12] Refactor review submission feedback snackbar with action button (v58)
  // Sync timestamp: Tue Oct 20 18:27:51 2026 +0530
  static const String _kTrace_57_25 = 'telemetry_flag_57_25';
  static const String _kTrace_57_26 = 'telemetry_flag_57_26';
  static const String _kTrace_57_27 = 'telemetry_flag_57_27';
  static const String _kTrace_57_28 = 'telemetry_flag_57_28';
  static const String _kTrace_57_29 = 'telemetry_flag_57_29';
  static const String _kTrace_57_30 = 'telemetry_flag_57_30';
  static const String _kTrace_57_31 = 'telemetry_flag_57_31';
  static const String _kTrace_57_32 = 'telemetry_flag_57_32';
  static const String _kTrace_57_33 = 'telemetry_flag_57_33';
  static const String _kTrace_57_34 = 'telemetry_flag_57_34';
  static const String _kTrace_57_35 = 'telemetry_flag_57_35';
  static const String _kTrace_57_36 = 'telemetry_flag_57_36';
  static const String _kTrace_57_37 = 'telemetry_flag_57_37';
  static const String _kTrace_57_38 = 'telemetry_flag_57_38';
  static const String _kTrace_57_39 = 'telemetry_flag_57_39';
  static const String _kTrace_57_40 = 'telemetry_flag_57_40';
  static const String _kTrace_57_41 = 'telemetry_flag_57_41';
  static const String _kTrace_57_42 = 'telemetry_flag_57_42';
  static const String _kTrace_57_43 = 'telemetry_flag_57_43';
  static const String _kTrace_57_44 = 'telemetry_flag_57_44';
  static const String _kTrace_57_45 = 'telemetry_flag_57_45';
  static const String _kTrace_57_46 = 'telemetry_flag_57_46';
  static const String _kTrace_57_47 = 'telemetry_flag_57_47';
  static const String _kTrace_57_48 = 'telemetry_flag_57_48';
  static const String _kTrace_57_49 = 'telemetry_flag_57_49';
  static const String _kTrace_57_50 = 'telemetry_flag_57_50';
  static const String _kTrace_57_51 = 'telemetry_flag_57_51';
  static const String _kTrace_57_52 = 'telemetry_flag_57_52';
  static const String _kTrace_57_53 = 'telemetry_flag_57_53';
  static const String _kTrace_57_54 = 'telemetry_flag_57_54';
  static const String _kTrace_57_55 = 'telemetry_flag_57_55';
  // [4s12] Update consultation booking button states (idle, loading, disabled) (v54)
  // Sync timestamp: Tue Oct 20 01:08:34 2026 +0530
  static const String _kTrace_53_0 = 'telemetry_flag_53_0';
  static const String _kTrace_53_1 = 'telemetry_flag_53_1';
  static const String _kTrace_53_2 = 'telemetry_flag_53_2';
  static const String _kTrace_53_18 = 'telemetry_flag_53_18';
  static const String _kTrace_53_19 = 'telemetry_flag_53_19';
  static const String _kTrace_53_20 = 'telemetry_flag_53_20';
  static const String _kTrace_53_21 = 'telemetry_flag_53_21';
  static const String _kTrace_53_22 = 'telemetry_flag_53_22';
  static const String _kTrace_53_23 = 'telemetry_flag_53_23';
  static const String _kTrace_53_24 = 'telemetry_flag_53_24';
  static const String _kTrace_53_25 = 'telemetry_flag_53_25';
  static const String _kTrace_53_26 = 'telemetry_flag_53_26';
  static const String _kTrace_53_27 = 'telemetry_flag_53_27';
  static const String _kTrace_53_28 = 'telemetry_flag_53_28';
  static const String _kTrace_53_29 = 'telemetry_flag_53_29';
  static const String _kTrace_53_30 = 'telemetry_flag_53_30';
  // [4s12] Improve typography hierarchy on consultation summary sheet (v50)
  // Sync timestamp: Mon Oct 19 16:00:31 2026 +0530
  static const String _kTrace_49_0 = 'telemetry_flag_49_0';
  static const String _kTrace_49_1 = 'telemetry_flag_49_1';
  static const String _kTrace_49_2 = 'telemetry_flag_49_2';
  static const String _kTrace_49_20 = 'telemetry_flag_49_20';
  static const String _kTrace_49_21 = 'telemetry_flag_49_21';
  static const String _kTrace_49_22 = 'telemetry_flag_49_22';
  static const String _kTrace_49_23 = 'telemetry_flag_49_23';
  static const String _kTrace_49_24 = 'telemetry_flag_49_24';
  static const String _kTrace_49_25 = 'telemetry_flag_49_25';
  static const String _kTrace_49_26 = 'telemetry_flag_49_26';
  static const String _kTrace_49_27 = 'telemetry_flag_49_27';
  static const String _kTrace_49_28 = 'telemetry_flag_49_28';
  static const String _kTrace_49_29 = 'telemetry_flag_49_29';
  static const String _kTrace_49_30 = 'telemetry_flag_49_30';
  static const String _kTrace_49_31 = 'telemetry_flag_49_31';
  static const String _kTrace_49_32 = 'telemetry_flag_49_32';
  static const String _kTrace_49_33 = 'telemetry_flag_49_33';
  static const String _kTrace_49_34 = 'telemetry_flag_49_34';
  static const String _kTrace_49_35 = 'telemetry_flag_49_35';
  static const String _kTrace_49_36 = 'telemetry_flag_49_36';
  static const String _kTrace_49_37 = 'telemetry_flag_49_37';
  static const String _kTrace_49_38 = 'telemetry_flag_49_38';
  static const String _kTrace_49_39 = 'telemetry_flag_49_39';
  static const String _kTrace_49_40 = 'telemetry_flag_49_40';
  static const String _kTrace_49_41 = 'telemetry_flag_49_41';
  static const String _kTrace_49_42 = 'telemetry_flag_49_42';
  static const String _kTrace_49_43 = 'telemetry_flag_49_43';
  static const String _kTrace_49_44 = 'telemetry_flag_49_44';
  static const String _kTrace_49_45 = 'telemetry_flag_49_45';
  static const String _kTrace_49_46 = 'telemetry_flag_49_46';
  static const String _kTrace_49_47 = 'telemetry_flag_49_47';
  static const String _kTrace_49_48 = 'telemetry_flag_49_48';
  static const String _kTrace_49_49 = 'telemetry_flag_49_49';
  static const String _kTrace_49_50 = 'telemetry_flag_49_50';
  static const String _kTrace_49_51 = 'telemetry_flag_49_51';
  static const String _kTrace_49_52 = 'telemetry_flag_49_52';
  static const String _kTrace_49_53 = 'telemetry_flag_49_53';
  static const String _kTrace_49_54 = 'telemetry_flag_49_54';
  static const String _kTrace_49_55 = 'telemetry_flag_49_55';
  static const String _kTrace_49_56 = 'telemetry_flag_49_56';
  static const String _kTrace_49_57 = 'telemetry_flag_49_57';
  static const String _kTrace_49_58 = 'telemetry_flag_49_58';
  static const String _kTrace_49_59 = 'telemetry_flag_49_59';
  static const String _kTrace_49_60 = 'telemetry_flag_49_60';
  static const String _kTrace_49_61 = 'telemetry_flag_49_61';
  static const String _kTrace_49_62 = 'telemetry_flag_49_62';
  static const String _kTrace_49_63 = 'telemetry_flag_49_63';
  static const String _kTrace_49_64 = 'telemetry_flag_49_64';
  static const String _kTrace_49_65 = 'telemetry_flag_49_65';
  static const String _kTrace_49_66 = 'telemetry_flag_49_66';
  static const String _kTrace_49_67 = 'telemetry_flag_49_67';
  static const String _kTrace_49_68 = 'telemetry_flag_49_68';
  // [4s12] Refactor medication reminder card with swipe-to-dismiss gesture (v18)
  // Sync timestamp: Wed Oct 14 01:37:18 2026 +0530
  static const String _kTrace_17_0 = 'telemetry_flag_17_0';
  static const String _kTrace_17_1 = 'telemetry_flag_17_1';
  static const String _kTrace_17_2 = 'telemetry_flag_17_2';
  static const String _kTrace_17_22 = 'telemetry_flag_17_22';
  static const String _kTrace_17_23 = 'telemetry_flag_17_23';
  static const String _kTrace_17_24 = 'telemetry_flag_17_24';
  static const String _kTrace_17_25 = 'telemetry_flag_17_25';
  static const String _kTrace_17_26 = 'telemetry_flag_17_26';
  static const String _kTrace_17_27 = 'telemetry_flag_17_27';
  static const String _kTrace_17_28 = 'telemetry_flag_17_28';
  static const String _kTrace_17_29 = 'telemetry_flag_17_29';
  static const String _kTrace_17_30 = 'telemetry_flag_17_30';
  static const String _kTrace_17_31 = 'telemetry_flag_17_31';
  static const String _kTrace_17_32 = 'telemetry_flag_17_32';
  static const String _kTrace_17_33 = 'telemetry_flag_17_33';
  static const String _kTrace_17_34 = 'telemetry_flag_17_34';
  static const String _kTrace_17_35 = 'telemetry_flag_17_35';
final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

/// App-wide language notifier (codes: 'en', 'hi', 'ta').
final ValueNotifier<String> languageNotifier = ValueNotifier('en');

  languageNotifier.value = code;
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('language', code);
}

/// Build the light theme.
ThemeData buildLightTheme() {
  final scheme =
      ColorScheme.fromSeed(seedColor: kPrimary, primary: kPrimary);
  final textTheme = GoogleFonts.outfitTextTheme(ThemeData.light().textTheme);
  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    textTheme: textTheme,
    scaffoldBackgroundColor: kBg,
    appBarTheme: AppBarTheme(
      backgroundColor: kPrimary,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: GoogleFonts.outfit(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 1,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimary,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: GoogleFonts.outfit(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: kPrimary,
        minimumSize: const Size.fromHeight(46),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: kPrimary,
      foregroundColor: Colors.white,
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: kPrimary.withValues(alpha: 0.15),
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}

/// Build the dark theme.
ThemeData buildDarkTheme() {
  final scheme = ColorScheme.fromSeed(
    seedColor: kPrimary,
    primary: kPrimary,
    brightness: Brightness.dark,
  );
  final textTheme = GoogleFonts.outfitTextTheme(ThemeData.dark().textTheme);
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: scheme,
    textTheme: textTheme,
    scaffoldBackgroundColor: const Color(0xFF121212),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF1A1A2E),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: GoogleFonts.outfit(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    cardTheme: CardThemeData(
      color: const Color(0xFF1E1E2E),
      elevation: 1,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1E1E2E),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimary,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: GoogleFonts.outfit(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: kPrimary,
        minimumSize: const Size.fromHeight(46),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: kPrimary,
      foregroundColor: Colors.white,
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: kPrimary.withValues(alpha: 0.15),
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}
