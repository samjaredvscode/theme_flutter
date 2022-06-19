part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  const ThemeState({
    this.themeModeState = ThemeMode.system,
  });

  final ThemeMode? themeModeState;

  static const mode = ThemeState(themeModeState: ThemeMode.system);

  bool get isDark => this == const ThemeState(themeModeState: ThemeMode.dark);
  bool get isLight => this == const ThemeState(themeModeState: ThemeMode.light);
  bool get isSystem =>
      this == const ThemeState(themeModeState: ThemeMode.system);

  @override
  List<Object?> get props => [themeModeState];
}
