import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum AppThemeStatus { dark, light }

class AppTheme {
  static final appThemeData = {
    AppThemeStatus.light: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
        ),
      ),
      useMaterial3: true,
    ),
    AppThemeStatus.dark: ThemeData(
      scaffoldBackgroundColor: const Color(0xFF121212),
      colorScheme: const ColorScheme.dark(),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
        ),
      ),
      useMaterial3: true,
    ),
  };
}
