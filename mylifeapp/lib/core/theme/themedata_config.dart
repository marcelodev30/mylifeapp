import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';
import '../config/constants/constants_config.dart';

class AppThemeData {
  static ThemeData get dark => _base.copyWith(
    scaffoldBackgroundColor: AppColors.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
    ),
    inputDecorationTheme: _base.inputDecorationTheme.copyWith(
      prefixIconColor: AppColors.white,
      suffixIconColor: AppColors.white,
      labelStyle: _base.inputDecorationTheme.labelStyle?.copyWith(
        color: Colors.white,
      ),
      hintStyle: _base.inputDecorationTheme.hintStyle?.copyWith(
        color: Colors.white,
      ),
    ),
    cardTheme: _base.cardTheme.copyWith(color: AppColors.white),
    textTheme: _base.textTheme.copyWith(
      titleSmall: _base.textTheme.titleSmall?.copyWith(color: AppColors.white),
      labelMedium: _base.textTheme.labelMedium?.copyWith(
        color: AppColors.white,
      ),
      bodyMedium: _base.textTheme.bodyMedium?.copyWith(color: AppColors.white),
      headlineSmall: _base.textTheme.headlineSmall?.copyWith(
        color: AppColors.white,
        decorationColor: AppColors.white,
      ),
    ),
  );
  static ThemeData get light => _base.copyWith(
    scaffoldBackgroundColor: AppColors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
    ),
    iconTheme: IconThemeData(color: Colors.black),
    inputDecorationTheme: _base.inputDecorationTheme.copyWith(
      prefixIconColor: AppColors.black,
      suffixIconColor: AppColors.blue,
      labelStyle: _base.inputDecorationTheme.labelStyle?.copyWith(
        color: Colors.black,
      ),
      hintStyle: _base.inputDecorationTheme.hintStyle?.copyWith(
        color: Colors.black,
      ),
    ),

    textTheme: _base.textTheme.copyWith(
      titleSmall: _base.textTheme.titleSmall?.copyWith(color: Colors.black),
      labelMedium: _base.textTheme.labelMedium?.copyWith(color: Colors.black),
      bodyMedium: _base.textTheme.bodyMedium?.copyWith(color: Colors.black),
      headlineSmall: _base.textTheme.headlineSmall?.copyWith(
        color: Colors.black,
        decorationColor: Colors.black,
      ),
    ),
  );
  static ThemeData get _base => ThemeData.dark().copyWith(
    cardTheme: CardThemeData(
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
      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),

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
      titleLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      titleSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

      labelLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      labelMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),

      headlineSmall: TextStyle(
        decoration: TextDecoration.underline,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),

      bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),

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
