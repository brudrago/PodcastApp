import 'package:flutter/material.dart';

class EpisodeDetailsScreen extends StatelessWidget {
  const EpisodeDetailsScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A24),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181A24),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text('Detalhes do Episódio'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'ID: $id',
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
