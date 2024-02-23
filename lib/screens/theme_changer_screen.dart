import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:widgets_app/providers/theme_provider.dart';

class ThemeChangerScreen extends HookConsumerWidget {
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Change App Theme'),
          actions: [
            IconButton(
              icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                ref.read(isDarkModeProvider.notifier).toggleTheme();
              },
            ),
          ],
        ),
        body: _ThemeChangerView());
  }
}

class _ThemeChangerView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(paletteColorsProvider);
    int colorIndex = ref.watch(colorIndexSelectedProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioListTile(
          title: Text('Color $index', style: TextStyle(color: color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: colorIndex,
          onChanged: (value) {
            final currentVal = value ?? 0;
            ref
                .read(colorIndexSelectedProvider.notifier)
                .selectColor(currentVal);
          },
        );
      },
    );
  }
}
