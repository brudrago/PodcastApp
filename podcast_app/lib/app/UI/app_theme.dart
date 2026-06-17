import 'package:flutter/material.dart';
import 'package:podcast_app/app/UI/app_colors.dart';

sealed class PodcastAppTheme {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: PodcastAppColors.lightBackground,
    colorScheme: const ColorScheme.light(
      primary: PodcastAppColors.primary,
      surface: PodcastAppColors.lightSurface,
      onSurface: PodcastAppColors.black,
      error: PodcastAppColors.error,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: PodcastAppColors.lightBackground,
      foregroundColor: PodcastAppColors.black,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: PodcastAppColors.black,
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(color: PodcastAppColors.black, fontSize: 20),
      bodyMedium: TextStyle(color: PodcastAppColors.black, fontSize: 14),
    ),
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: PodcastAppColors.darkBackground,
    colorScheme: const ColorScheme.dark(
      primary: PodcastAppColors.primary,
      surface: PodcastAppColors.darkSurface,
      onSurface: PodcastAppColors.white,
      error: PodcastAppColors.error,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: PodcastAppColors.darkBackground,
      foregroundColor: PodcastAppColors.white,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: PodcastAppColors.white,
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(color: PodcastAppColors.white, fontSize: 20),
      bodyMedium: TextStyle(color: PodcastAppColors.white, fontSize: 14),
    ),
  );
}
