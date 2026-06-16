import 'package:flutter/material.dart';
import 'package:podcast_app/app/router/app_router.dart';
import 'package:podcast_app/app/theme_controller.dart';

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
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xFF181A24),
        ),
        routerConfig: appRouter,
      ),
    );
  }
}
