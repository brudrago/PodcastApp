import 'package:flutter/material.dart';
import 'package:podcast_app/features/sections/models/section_item.dart';

class SectionCard extends StatelessWidget{
  const SectionCard({
    super.key,
    required this.section,
    required this.onTap,
     });

  final SectionItem section;
  final VoidCallback onTap;

  @override
Widget build(BuildContext context) {
  return InkWell(
    borderRadius: BorderRadius.circular(16),
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: section.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              section.emoji,
              style: const TextStyle(fontSize: 40),
            ),
          ),
          Positioned(
            left: 8,
            right: 8,
            bottom: 8,
            child: Text(
              section.title.toUpperCase(),
              textAlign: TextAlign.right,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                height: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
}

