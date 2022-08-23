import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_bloc.freezed.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(themeMode: ThemeMode.light)) {
    on<ThemeEvent>((event, emit) {
      if (event.isDark) {
        emit(ThemeState(themeMode: ThemeMode.dark));
      } else {
        emit(ThemeState(themeMode: ThemeMode.light));
      }
    });
  }

  void switchToDark() {
    add(ThemeEvent(isDark: true));
  }

  void switchToLight() {
    add(ThemeEvent(isDark: false));
  }
}
