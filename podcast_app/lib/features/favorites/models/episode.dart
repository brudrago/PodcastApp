class Episode {
  final String id;
  final String title;
  final String description;
  final String status;
  final String imageUrl;
  final bool isFavorite;

  const Episode({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.imageUrl,
    required this.isFavorite,
  });

  Episode copyWith({bool? isFavorite}) {
    return Episode(
      id: id,
      title: title,
      description: description,
      status: status,
      imageUrl: imageUrl,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
