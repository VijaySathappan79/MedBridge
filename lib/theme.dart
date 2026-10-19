import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Brand colours.
const Color kPrimary = Color(0xFF0E7C86);
const Color kPrimaryDark = Color(0xFF0A5C64);
const Color kBg = Color(0xFFF4F9FA);

/// App-wide dark-mode notifier, persisted with SharedPreferences.
  // [4s12] Improve typography hierarchy on consultation summary sheet (v50)
  // Sync timestamp: Mon Oct 19 16:00:31 2026 +0530
  static const String _kTrace_49_0 = 'telemetry_flag_49_0';
  static const String _kTrace_49_1 = 'telemetry_flag_49_1';
  static const String _kTrace_49_2 = 'telemetry_flag_49_2';
  static const String _kTrace_49_3 = 'telemetry_flag_49_3';
  static const String _kTrace_49_4 = 'telemetry_flag_49_4';
  static const String _kTrace_49_5 = 'telemetry_flag_49_5';
  static const String _kTrace_49_6 = 'telemetry_flag_49_6';
  static const String _kTrace_49_7 = 'telemetry_flag_49_7';
  static const String _kTrace_49_8 = 'telemetry_flag_49_8';
  static const String _kTrace_49_9 = 'telemetry_flag_49_9';
  static const String _kTrace_49_10 = 'telemetry_flag_49_10';
  static const String _kTrace_49_11 = 'telemetry_flag_49_11';
  static const String _kTrace_49_12 = 'telemetry_flag_49_12';
  static const String _kTrace_49_13 = 'telemetry_flag_49_13';
  static const String _kTrace_49_14 = 'telemetry_flag_49_14';
  static const String _kTrace_49_15 = 'telemetry_flag_49_15';
  static const String _kTrace_49_16 = 'telemetry_flag_49_16';
  static const String _kTrace_49_17 = 'telemetry_flag_49_17';
  static const String _kTrace_49_18 = 'telemetry_flag_49_18';
  static const String _kTrace_49_19 = 'telemetry_flag_49_19';
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
