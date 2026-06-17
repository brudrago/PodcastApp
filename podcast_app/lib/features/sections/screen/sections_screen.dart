import 'package:flutter/material.dart';
import 'package:podcast_app/features/sections/models/section_item.dart';
import '../widgets/section_card.dart';
import 'package:go_router/go_router.dart';

class SectionsScreen extends StatelessWidget {
  const SectionsScreen({super.key});

  final sections = const [
    SectionItem(
      title: 'Luz Acesa',
      emoji: '👻',
      color: Colors.red,
      id: 'Luz Acesa',
    ),
    SectionItem(
      title: 'Cadeirada',
      emoji: '🪑',
      color: Colors.teal,
      id: 'Cadeirada',
    ),
    SectionItem(
      title: 'Picolé de Limão',
      emoji: '🟩',
      color: Colors.orange,
      id: 'Picolé de Limão',
    ),
    SectionItem(
      title: 'Meu Erro',
      emoji: '⚖️',
      color: Colors.grey,
      id: 'Meu Erro',
    ),
    SectionItem(
      title: 'Amor nas Redes',
      emoji: '💌',
      color: Colors.pink,
      id: 'Amor nas Redes',
    ),
    SectionItem(
      title: 'Mico Meu',
      emoji: '🐵',
      color: Colors.amber,
      id: 'Mico Meu',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
                    onTap: () => context.push('/sections/${section.id}'),
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
