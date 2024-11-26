import 'package:flutter/material.dart';

class Themes {
  /// Indicate if dark mode is used
  static ThemeMode mode = ThemeMode.system;

  static ThemeMode checkMode() {
    if (Themes.mode == ThemeMode.system) {
      return MediaQuery.platformBrightnessOf == Brightness.light ? ThemeMode.light : ThemeMode.dark;
    }

    return Themes.mode;
  }

  static ThemeData theme() {
    ThemeMode mode = Themes.mode;

    if (mode == ThemeMode.dark) {
      return Themes.darkTheme;
    } else if(mode == ThemeMode.light) {
      return Themes.lightTheme;
    }

    return MediaQuery.platformBrightnessOf == Brightness.light ? Themes.lightTheme : Themes.darkTheme;
  }

  /// Light/white theme configurations
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(primary: Colors.blue, secondary: Colors.blue),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
      ));

  /// Dark theme configurations
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(primary: Colors.blue, onPrimary: Colors.blueAccent, secondary: Colors.blue, onSecondary: Colors.blueAccent),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
      ));
}
