import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

part 'theme_provider.g.dart';

@riverpod
List<Color> paletteColors(PaletteColorsRef ref) => appColors;

@riverpod
class ThemeController extends _$ThemeController {
  @override
  AppTheme build() => AppTheme();

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int value) {
    state = state.copyWith(selectedColor: value);
  }
}
