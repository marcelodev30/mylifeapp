import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData get dark => ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16),
      labelLarge: TextStyle(fontSize: 14),
    ),
  );
}
