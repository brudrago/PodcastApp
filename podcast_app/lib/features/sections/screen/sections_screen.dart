import 'package:flutter/material.dart';
import 'package:podcast_app/features/sections/models/section_item.dart';
import '../widgets/section_card.dart';

class SectionsScreen extends StatelessWidget {
  const SectionsScreen({super.key});

  final sections = const [
    SectionItem(title: 'Luz Acesa', emoji: '👻', color: Colors.red),
    SectionItem(title: 'Cadeirada', emoji: '🪑', color: Colors.teal),
    SectionItem(title: 'Picolé de Limão', emoji: '🟩', color: Colors.orange),
    SectionItem(title: 'Meu Erro', emoji: '⚖️', color: Colors.grey),
    SectionItem(title: 'Amor nas Redes', emoji: '💌', color: Colors.pink),
    SectionItem(title: 'Mico Meu', emoji: '🐵', color: Colors.amber),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A24),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 32, 24, 24),
              child: Text(
                'Quadros',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: sections.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  final section = sections[index];

                  return SectionCard(
                    section: section,
                    onTap: () => print('Tapped: ${section.title}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
