import 'package:flutter/material.dart';

enum AppThemeStatus { dark, light }

class AppTheme {
  static final appThemeData = {
    AppThemeStatus.light: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      useMaterial3: true,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.blue[200],
      ),
    ),
    AppThemeStatus.dark: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      useMaterial3: true,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.blue[600],
        selectedIconTheme: const IconThemeData(color: Colors.red),
      ),
    ),
  };
}
