import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/colors_config.dart';

class AppThemeData {
  static ThemeData get dark => ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.black,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8),
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: Colors.black,
      suffixIconColor: Colors.black,
      labelStyle: TextStyle(
        color: AppColors.black,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}
