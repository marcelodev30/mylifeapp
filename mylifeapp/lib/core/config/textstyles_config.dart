import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/colors_config.dart';

class AppTextStyles {
  static TextStyle get appBarTitle18 => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  static TextStyle get appBarSubtitle20 => TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    height: 1.2,
    color: AppColors.white,
  );

  static TextStyle get appTitle32 => TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static TextStyle get text40BoldLetterSpacing1 => TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.white, // base para o shader
    letterSpacing: 1.2,
  );
}
