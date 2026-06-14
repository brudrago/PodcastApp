import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:podcast_app/features/favorites/models/episode.dart';

class FavoriteEpisodeTile extends StatelessWidget {
  const FavoriteEpisodeTile({
    super.key,
    required this.episode,
    required this.onFavoriteTap,
  });

  final Episode episode;
  final VoidCallback onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(blurRadius: 4, offset: Offset(0, 2), color: Colors.black12),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: 80,
              height: 80,
              child: CachedNetworkImage(
                imageUrl: episode.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => const ColoredBox(
                  color: Color(0xFFE0E0E0),
                  child: Center(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),
                errorWidget: (context, url, error) => const ColoredBox(
                  color: Color(0xFFE0E0E0),
                  child: Icon(Icons.broken_image_outlined, color: Colors.grey),
                ),
              ),
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  episode.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium,
                ),

                const SizedBox(height: 4),

                Text(
                  episode.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const SizedBox(height: 8),

                Text(episode.status, style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),

          IconButton(
            onPressed: onFavoriteTap,
            icon: Icon(
              episode.isFavorite ? Icons.favorite : Icons.favorite_border,
              color: episode.isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

/// Layout:
///
/// Container
///  └── Row
///       ├── Image
///       ├── Expanded
///       │    └── Column
///       │         ├── Title
///       │         ├── Description
///       │         └── Status
///       └── IconButton

//iOS:
// ---------------------------------------------------
// | Image | Title                          | Button |
// |       | Description                    |        |
// |       | Status                         |        |
// ---------------------------------------------------
