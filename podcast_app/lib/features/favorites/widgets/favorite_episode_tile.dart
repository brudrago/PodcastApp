import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FavoriteEpisodeTile extends StatelessWidget {
  const FavoriteEpisodeTile({
    super.key,
    required this.title,
    required this.description,
    required this.status,
    required this.imageUrl,
    required this.onFavoriteTap,
  });

  final String title;
  final String description;
  final String status;
  final String imageUrl;
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
            child: CachedNetworkImage(
              imageUrl: "http://via.placeholder.com/350x150",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium,
                ),

                const SizedBox(height: 4),

                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const SizedBox(height: 8),

                Text(status, style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),

          IconButton(
            onPressed: onFavoriteTap,
            icon: const Icon(Icons.favorite, color: Colors.red),
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
