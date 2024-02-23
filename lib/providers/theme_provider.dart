import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

part 'theme_provider.g.dart';

@riverpod
class IsDarkMode extends _$IsDarkMode {
  @override
  bool build() {
    return false;
  }

  void toggleTheme() {
    state = !state;
  }
}

@riverpod
class ColorIndexSelected extends _$ColorIndexSelected {
  @override
  int build() {
    return 0;
  }

  void selectColor(int index) {
    state = index;
  }
}

@riverpod
List<Color> paletteColors(PaletteColorsRef ref) => appColors;
