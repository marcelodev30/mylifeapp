import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';
import '../config/constants/constants_config.dart';

class AppThemeData {
  static ThemeData get dark => ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.black,

    cardTheme: CardThemeData(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(
              AppConstants.borderRadius,
            ),
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: AppColors.white,
      suffixIconColor: AppColors.white,
      filled: true,
      fillColor: Colors.transparent,
      labelStyle: TextStyle(
        color: AppColors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      hintStyle: TextStyle(
        color: AppColors.white,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        borderSide: BorderSide(
          width: AppConstants.borderSideWidth,
          color: AppColors.black,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        borderSide: BorderSide(
          color: Colors.blueAccent,
          width: AppConstants.borderSideWidth,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        borderSide: BorderSide(
          color: Colors.deepPurpleAccent,
          width: AppConstants.borderSideWidth,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        borderSide: BorderSide(
          color: AppColors.error,
          width: AppConstants.borderSideWidth,
        ),
      ),
      errorStyle: TextStyle(
        color: AppColors.error,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      bodyLarge: TextStyle(
        color: AppColors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.transparent,
      centerTitle: true,
    ),
  );
}
