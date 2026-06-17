import 'package:flutter/material.dart';

class ThemeController extends InheritedWidget {
  const ThemeController({
    super.key,
    required this.isDark,
    required this.onThemeChanged,
    required super.child,
  });

  final bool isDark;
  final ValueChanged<bool> onThemeChanged;

  static ThemeController of(BuildContext context) {
    final controller = context
        .dependOnInheritedWidgetOfExactType<ThemeController>();

    assert(controller != null, 'ThemeController não encontrado no contexto');

    return controller!;
  }

  @override
  bool updateShouldNotify(ThemeController oldWidget) {
    return isDark != oldWidget.isDark;
  }
}
