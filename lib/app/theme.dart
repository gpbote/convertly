import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primary = Color(0xFF005FCC);
  static const Color secondary = Color(0xFF1B263B);

  static const Color background = Colors.white;
  static const Color surface = Color(0xFFF8FAFC);

  static const Color textPrimary = Color(0xFF111827);
  static const Color textSecondary = Color(0xFF4B5563);

  static const Color border = Color(0xFFD0D7DE);

  static ThemeData get light {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: background,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: background,
        foregroundColor: secondary,
        elevation: 0,
      ),
      cardTheme: const CardThemeData(
        color: surface,
        elevation: 0,
        margin: EdgeInsets.zero,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: border),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
