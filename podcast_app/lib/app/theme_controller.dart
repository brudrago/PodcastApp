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
    return context.dependOnInheritedWidgetOfExactType<ThemeController>()!;
  }

  @override
  bool updateShouldNotify(ThemeController oldWidget) {
    return isDark != oldWidget.isDark;
  }
}
