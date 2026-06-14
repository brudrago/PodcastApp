import 'package:flutter/material.dart';
import 'package:podcast_app/features/favorites/models/episode.dart';
import 'package:podcast_app/features/favorites/widgets/favorite_episode_tile.dart';

class EpisodeDetailsScreen extends StatefulWidget {
  const EpisodeDetailsScreen({super.key, required this.id});

  final String id;

  @override
  State<EpisodeDetailsScreen> createState() => _EpisodeDetailsScreenState();
}

class _EpisodeDetailsScreenState extends State<EpisodeDetailsScreen> {
  late List<Episode> episodes = List.generate(
    10,
    (index) => Episode(
      id: '$index',
      title: 'Episódio ${index + 1}',
      description: 'Descrição do episódio',
      status: '20 min · 11 jun 2026',
      imageUrl: 'https://picsum.photos/200',
      isFavorite: index.isEven,
    ),
  );

  void _toggleFavorite(int index) {
    setState(() {
      episodes[index] = episodes[index].copyWith(
        isFavorite: !episodes[index].isFavorite,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A24),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181A24),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Center(
                  child: Text('🟩', style: TextStyle(fontSize: 80)),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PICOLÉ DE LIMÃO',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '50 episódios',
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.yellow,
                    child: const Icon(Icons.play_arrow),
                  ),
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Episódios',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 16)),

          SliverList.builder(
            itemCount: episodes.length,
            itemBuilder: (context, index) {
              return FavoriteEpisodeTile(
                episode: episodes[index],
                onFavoriteTap: () => _toggleFavorite(index),
              );
            },
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),
    );
  }
}
