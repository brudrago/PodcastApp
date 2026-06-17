import 'package:flutter/material.dart';
import 'package:podcast_app/app/UI/theme_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = ThemeController.of(context);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(title: const Text('Perfil')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text(
            'Configurações',
            style: Theme.of(context).textTheme.headlineSmall,
          ),

          const SizedBox(height: 24),

          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.outline),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                const Icon(Icons.dark_mode),

                const SizedBox(width: 16),

                const Expanded(
                  child: Text('Modo escuro', style: TextStyle(fontSize: 18)),
                ),

                Switch(
                  value: themeController.isDark,
                  onChanged: themeController.onThemeChanged,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
