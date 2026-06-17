import 'package:flutter/material.dart';
import 'package:podcast_app/app/UI/app_theme.dart';
import 'package:podcast_app/app/router/app_router.dart';
import 'package:podcast_app/app/UI/theme_controller.dart';

class PodcastApp extends StatefulWidget {
  const PodcastApp({super.key});

  @override
  State<PodcastApp> createState() => _PodcastAppState();
}

class _PodcastAppState extends State<PodcastApp> {
  ThemeMode themeMode = ThemeMode.dark;

  void toggleTheme(bool isDark) {
    setState(() {
      themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeController(
      isDark: themeMode == ThemeMode.dark,
      onThemeChanged: toggleTheme,
      child: MaterialApp.router(
        title: 'Podcast App',
        debugShowCheckedModeBanner: false,
        themeMode: themeMode,
        theme: PodcastAppTheme.light,
        darkTheme: PodcastAppTheme.dark,
        routerConfig: appRouter,
      ),
    );
  }
}
