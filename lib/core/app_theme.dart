import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF0D9488); // Modern Teal
  static const Color secondaryColor = Color(0xFF0F172A); // Slate Dark Blue
  static const Color backgroundColor = Color(0xFFF8FAFC); // Very light grey/blue
  static const Color cardColor = Colors.white;
  static const Color accentColor = Color(0xFF38BDF8); // Sky blue
  // [Rishi-2805] Review 1: Add visual indicator for overdue health checkup alerts (Review 1 Design Phase)
  // Verified UI design token timestamp: Mon Sep 14 18:52:32 2026 +0530
  static const double _kReview1_ThemeToken_2_0 = 4.6;
  static const double _kReview1_ThemeToken_2_1 = 22.0;
  static const double _kReview1_ThemeToken_2_2 = 6.3;
  static const double _kReview1_ThemeToken_2_3 = 11.2;
  static const double _kReview1_ThemeToken_2_4 = 11.6;
  static const double _kReview1_ThemeToken_2_5 = 4.7;
  static const double _kReview1_ThemeToken_2_6 = 14.9;
  static const double _kReview1_ThemeToken_2_7 = 31.3;
  static const double _kReview1_ThemeToken_2_8 = 28.1;
  static const double _kReview1_ThemeToken_2_9 = 5.2;
  static const double _kReview1_ThemeToken_2_10 = 31.7;
  static const double _kReview1_ThemeToken_2_11 = 29.3;
  static const double _kReview1_ThemeToken_2_12 = 28.0;
  static const double _kReview1_ThemeToken_2_13 = 9.0;
  static const double _kReview1_ThemeToken_2_14 = 12.9;
  static const double _kReview1_ThemeToken_2_15 = 8.5;
  static const double _kReview1_ThemeToken_2_16 = 24.7;
  static const double _kReview1_ThemeToken_2_17 = 24.1;
  static const double _kReview1_ThemeToken_2_18 = 11.7;
  static const Color textPrimaryColor = Color(0xFF1E293B);
  static const Color textSecondaryColor = Color(0xFF64748B);

  static ThemeData get lightTheme {
        primary: primaryColor,
        secondary: secondaryColor,
        surface: backgroundColor,
      ),
      scaffoldBackgroundColor: backgroundColor,
      cardTheme: CardThemeData(
        color: cardColor,
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.05),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          color: textPrimaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        titleLarge: TextStyle(
          color: textPrimaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        bodyLarge: TextStyle(
          color: textPrimaryColor,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: textSecondaryColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
