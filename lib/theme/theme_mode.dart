import 'package:flutter/material.dart';

enum ThemeModeStatus { dark, light, system }

class ThemeModeApp {
  static final themeModeApp = {
    ThemeModeStatus.dark: ThemeMode.dark,
    ThemeModeStatus.light: ThemeMode.light,
    ThemeModeStatus.system: ThemeMode.system,
  };
}
