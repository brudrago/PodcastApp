import 'package:flutter/material.dart';

class SectionItem {
  const SectionItem({
    required this.title,
    required this.emoji,
    required this.color,
    required this.id,
  });

  final String title;
  final String emoji;
  final Color color;
  final String id;
}
