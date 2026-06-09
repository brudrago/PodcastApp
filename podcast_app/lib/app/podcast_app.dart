import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:podcast_app/features/presentation/podcast_page.dart';

class PodcastApp extends StatelessWidget {
  const PodcastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Podcast App',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const PodcastPage(),
    );
  }
}
