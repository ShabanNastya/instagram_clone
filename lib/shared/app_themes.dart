import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'core/blocs/theme/md_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData.from(
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: MSColors.kMdThemeLightPrimary,
      primaryVariant: MSColors.kMdThemeLightOnPrimaryContainer,
      onPrimary: MSColors.kMdThemeLightOnPrimary,
      secondary: MSColors.kMdThemeLightSecondary,
      onSecondary: MSColors.kMdThemeLightOnSecondary,
      surface: MSColors.kMdThemeLightSurface,
      onSurface: MSColors.kMdThemeLightOnSurface,
      background: MSColors.kMdThemeLightBackground,
      onBackground: MSColors.kMdThemeLightOnBackground,
      error: MSColors.kMdThemeLightError,
      onError: MSColors.kMdThemeLightOnError,
    ),

    // textTheme: Typography.material2018().white.apply()
    textTheme: Typography.material2018().black.copyWith(
        //  fontFamily: ''
        ),
  ).copyWith(
      //canvasColor: Colors.orangeAccent,
      );

  static final ThemeData darkTheme = ThemeData.from(
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: MSColors.kMdThemeDarkPrimary,
      primaryVariant: MSColors.kMdThemeDarkOnPrimaryContainer,
      onPrimary: MSColors.kMdThemeDarkOnPrimary,
      secondary: MSColors.kMdThemeDarkSecondary,
      onSecondary: MSColors.kMdThemeDarkOnSecondary,
      surface: MSColors.kMdThemeDarkSurface,
      onSurface: MSColors.kMdThemeDarkOnSurface,
      background: MSColors.kMdThemeDarkBackground,
      onBackground: MSColors.kMdThemeDarkOnBackground,
      error: MSColors.kMdThemeDarkError,
      onError: MSColors.kMdThemeDarkOnError,
    ),

    // textTheme: Typography.material2018().white.apply()
    textTheme: Typography.material2018().white.copyWith(
        //  fontFamily: ''
        ),
  ).copyWith(
      //canvasColor: Colors.teal,
      );
}

enum AppTheme {
  lightTheme,
  darkTheme,
}
