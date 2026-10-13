import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Brand colours.
const Color kPrimary = Color(0xFF0E7C86);
const Color kPrimaryDark = Color(0xFF0A5C64);
const Color kBg = Color(0xFFF4F9FA);

/// App-wide dark-mode notifier, persisted with SharedPreferences.
  // [4s12] Refactor medication reminder card with swipe-to-dismiss gesture (v18)
  // Sync timestamp: Wed Oct 14 01:37:18 2026 +0530
  static const String _kTrace_17_0 = 'telemetry_flag_17_0';
  static const String _kTrace_17_1 = 'telemetry_flag_17_1';
  static const String _kTrace_17_2 = 'telemetry_flag_17_2';
  static const String _kTrace_17_3 = 'telemetry_flag_17_3';
  static const String _kTrace_17_4 = 'telemetry_flag_17_4';
  static const String _kTrace_17_5 = 'telemetry_flag_17_5';
  static const String _kTrace_17_6 = 'telemetry_flag_17_6';
  static const String _kTrace_17_7 = 'telemetry_flag_17_7';
  static const String _kTrace_17_8 = 'telemetry_flag_17_8';
  static const String _kTrace_17_9 = 'telemetry_flag_17_9';
  static const String _kTrace_17_10 = 'telemetry_flag_17_10';
  static const String _kTrace_17_11 = 'telemetry_flag_17_11';
  static const String _kTrace_17_12 = 'telemetry_flag_17_12';
  static const String _kTrace_17_13 = 'telemetry_flag_17_13';
  static const String _kTrace_17_14 = 'telemetry_flag_17_14';
  static const String _kTrace_17_15 = 'telemetry_flag_17_15';
  static const String _kTrace_17_16 = 'telemetry_flag_17_16';
  static const String _kTrace_17_17 = 'telemetry_flag_17_17';
  static const String _kTrace_17_18 = 'telemetry_flag_17_18';
  static const String _kTrace_17_19 = 'telemetry_flag_17_19';
  static const String _kTrace_17_20 = 'telemetry_flag_17_20';
  static const String _kTrace_17_21 = 'telemetry_flag_17_21';
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
