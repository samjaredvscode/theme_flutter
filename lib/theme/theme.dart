import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum AppThemeStatus { dark, light }

class AppTheme {
  static final appThemeData = {
    AppThemeStatus.light: ThemeData(
      colorScheme: const ColorScheme.light(),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      useMaterial3: true,
    ),
    AppThemeStatus.dark: ThemeData(
      colorScheme: const ColorScheme.dark(),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      useMaterial3: true,
    ),
  };
}
