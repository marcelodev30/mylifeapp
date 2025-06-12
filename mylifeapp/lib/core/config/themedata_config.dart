import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/colors_config.dart';

import 'constants_config.dart';

class AppThemeData {
  static ThemeData get dark => ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.black,
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
      prefixIconColor: AppColors.black,
      suffixIconColor: AppColors.black,
      filled: true,
      fillColor: Colors.transparent,
      labelStyle: TextStyle(
        color: AppColors.black,
        fontSize: 16,
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
          color: Colors.redAccent,
          width: AppConstants.borderSideWidth,
        ),
      ),
      errorStyle: TextStyle(
        color: AppColors.red,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
