import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.light(
        primary: Color(0xFF4a7c59),
        onPrimary: Colors.black,
        secondary: Color(0xFF6b6358),
        onSecondary: Colors.grey,

        onSurface: Color(0xFFf9f4ee),
        surface: Colors.white,
        secondaryFixed: Color(0xFFfbf6f0),
        onSecondaryFixed: Color(0xFFf1ece4),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(primaryColor: Color(0xFF4a7c59));
  }
}
