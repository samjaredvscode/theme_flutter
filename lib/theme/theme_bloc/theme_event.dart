part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeChangedEvent extends ThemeEvent {
  const ThemeChangedEvent({
    required this.themeStatus,
  });

  final bool themeStatus;

  @override
  List<Object> get props => [themeStatus];
}
