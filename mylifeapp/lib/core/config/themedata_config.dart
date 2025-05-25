import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/colors_config.dart';

class AppThemeData {

  static ThemeData get dark => ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.black
  );
}