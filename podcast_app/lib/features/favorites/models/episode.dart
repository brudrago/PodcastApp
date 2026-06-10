class Episode {
  final String id;
  final String title;
  final String imageUrl;
  final bool isFavorite;
  final String timestamp;

  const Episode({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.isFavorite,
    required this.timestamp,
  });
}
