import 'package:flutter/material.dart';

const List<Color> appColors = [
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.amber,
  Colors.indigo,
  Colors.cyan,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  const AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(selectedColor >= 0,
            'selectedColor must be greater than or equal to 0'),
        assert(selectedColor < appColors.length,
            'selectedColor must be less than ${appColors.length}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: appColors[selectedColor],
        appBarTheme: const AppBarTheme(centerTitle: true),
      );
}
