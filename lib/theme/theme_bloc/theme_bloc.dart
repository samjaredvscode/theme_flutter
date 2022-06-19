import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theme_flutter/theme/theme_mode.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ThemeChangedEvent>((event, emit) {
      emit(ThemeState(
          themeModeState: ThemeModeApp.themeModeApp[event.themeModeApp]));
    });
  }
}
