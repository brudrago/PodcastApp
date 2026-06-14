import 'package:flutter/material.dart';
import 'package:podcast_app/features/favorites/models/episode.dart';
import 'package:podcast_app/features/favorites/widgets/favorite_episode_tile.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final List<Episode> favorites = [
    const Episode(
      id: '1',
      title: 'Flutter para iOS Developers',
      description: 'Aprenda Flutter vindo de UIKit.',
      status: 'Ouvido',
      imageUrl: 'https://picsum.photos/200',
      isFavorite: true,
    ),
    const Episode(
      id: '2',
      title: 'Arquitetura Mobile',
      description: 'Clean Architecture no mundo mobile.',
      status: 'Não ouvido',
      imageUrl: 'https://picsum.photos/201',
      isFavorite: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favoritos')),
      body: favorites.isEmpty
          ? const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite_border, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Nenhum favorito ainda',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final episode = favorites[index];

                return FavoriteEpisodeTile(
                  episode: episode,
                  onFavoriteTap: () {
                    setState(() {
                      favorites.removeAt(index);
                    });
                  },
                );
              },
            ),
    );
  }
}
