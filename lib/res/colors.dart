import 'package:flutter/material.dart';

class AppConstants {
  static const MaterialColor appTheme = MaterialColor(
    AppColors.primaryColor,
    <int, Color>{
      50: Color(0xFFe9e6eb),
      100: Color(0xFFc8bfcd),
      200: Color(0xFFa395ac),
      300: Color(0xFD7e6b8b),
      350: Color(0xFF7e6b8b),
      // only for raised button while pressed in light theme
      400: Color(0xFF634b72),
      500: Color(AppColors.primaryColor),
      600: Color(0xFF402651),
      700: Color(0xFF372048),
      800: Color(0xFF2f1a3e),
      850: Color(0xFA20102e),
      // only for background color in dark theme
      900: Color(0xFF20102e),
    },
  );
}

class AppColors {
  static const int primaryColor = 0xFF472B59;
  static const int primaryColorDark = 0xFF1b1b1b;
  static const Color accentColor = Color(0xFFAB75AC);
  static const Color accentColorSplash = Color(0xFDAB75AC);

  static const Color lightBlue = Color(0xFF4A90E2);
  static const Color darkGreen = Color(0xFF417505);

  static Color getPrimaryColor() {
    return Color(primaryColor);
  }
}
