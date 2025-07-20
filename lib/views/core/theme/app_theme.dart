import 'package:flutter/material.dart';

/// Global theme for Movie Search app, with a purple accent
final ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.purple,
  scaffoldBackgroundColor: Colors.grey[50],
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.purple,
    accentColor: Colors.purpleAccent,
    backgroundColor: Colors.grey[50],
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.purple,
    foregroundColor: Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    labelSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontSize: 14),
    headlineMedium: TextStyle(fontSize: 12),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.purple,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  dividerTheme: DividerThemeData(
    color: Colors.purple.withValues(alpha: 0.2),
    thickness: 1,
    space: 0,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    hintStyle: TextStyle(color: Colors.purple.withValues(alpha: 0.6)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.purple.withValues(alpha: 0.4)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.purple, width: 2),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 12,
    ),
  ),
  dialogTheme: DialogThemeData(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);
