import 'package:flutter/material.dart';

enum AppThemeStatus {
  dark,
  light,
}

class AppTheme {
  static final appThemeData = {
    AppThemeStatus.light: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorSchemeSeed: Colors.red,
      useMaterial3: true,
      brightness: Brightness.light,
    ),
    AppThemeStatus.dark: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorSchemeSeed: Colors.red[600],
      brightness: Brightness.dark,
      useMaterial3: true,
    )
  };
}
