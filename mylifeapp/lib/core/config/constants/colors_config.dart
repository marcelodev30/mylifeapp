import 'package:flutter/material.dart';

class AppColors {
  static Color get black => Colors.black;
  static Color get white => Colors.white;
  static Color get green => Colors.green;
  static Color get gray => Colors.grey;
  static Color get blue => Colors.blue;
  static Color get red => Colors.red;
  static Color get success => Color(0xFF388E3C);
  static Color get error => Color(0xFFD32F2F);
  static Color get warning => Color(0xFFF57C00);
  static Color get info => Color(0xFF1976D2);
  static Color get deepNavy => Color(0xFF0A0F1C);
  static Color get neonRed => Color(0xFFFF2A6D);
  static Color get neonCyan => Color(0xFF00E5FF);

  static LinearGradient get neonGradient => LinearGradient(
    colors: [neonCyan, neonRed],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
