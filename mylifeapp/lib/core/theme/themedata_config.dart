import 'package:flutter/material.dart';
import 'package:mylifeapp/core/config/constants/colors_config.dart';
import '../config/constants/constants_config.dart';

class AppThemeData {
  // ============= TEMA Light ===========================================
  static ThemeData get light {
    final theme = ThemeData.light();
    return theme.copyWith(
      scaffoldBackgroundColor: AppColors.white,
      colorScheme: theme.colorScheme.copyWith(
        primary: Colors.deepPurpleAccent,
        secondary: Colors.blueAccent,
        surface: AppColors.white,
        onSurface: AppColors.black,
        error: Colors.red,
        onError: AppColors.white,
      ),
      // Aplica as customizações de widgets
      cardTheme: _cardTheme,
      textButtonTheme: _textButtonTheme,
      inputDecorationTheme: _inputDecorationTheme(theme.colorScheme),
      textTheme: _textTheme(theme.textTheme),
      appBarTheme: _appBarTheme(theme.appBarTheme),
    );
  }

  // ============= TEMA ESCURO ===========================================
  static ThemeData get dark {
    final theme = ThemeData.dark();

    return theme.copyWith(
      scaffoldBackgroundColor: AppColors.black,
      colorScheme: theme.colorScheme.copyWith(
        primary: const Color.fromARGB(255, 1, 1, 2),
        secondary: Colors.blueAccent.shade100,
        surface: const Color(0xFF1E1E1E),
        onSurface: AppColors.white,
        error: Colors.redAccent.shade100,
        onError: AppColors.black,
      ),
      // Aplica as customizações de widgets
      cardTheme: _cardTheme,
      textButtonTheme: _textButtonTheme,
      inputDecorationTheme: _inputDecorationTheme(theme.colorScheme),
      textTheme: _textTheme(theme.textTheme),
      appBarTheme: _appBarTheme(theme.appBarTheme),
    );
  }

  // ================= CardThemeData  ==========================
  static final CardThemeData _cardTheme = CardThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  // ================= TextButtonThemeData  ============================
  static final TextButtonThemeData _textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        ),
      ),
    ),
  );

  // ===================  TextTheme  ==========================
  static TextTheme _textTheme(TextTheme base) => base.copyWith(
    titleLarge: base.titleLarge?.copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: base.titleMedium?.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: base.titleSmall?.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    labelLarge: base.labelLarge?.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: base.labelMedium?.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: base.headlineSmall?.copyWith(
      decoration: TextDecoration.underline,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: base.bodyMedium?.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: base.bodyLarge?.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );

  // ================= AppBarTheme ==================================
  static AppBarTheme _appBarTheme(AppBarTheme base) => base.copyWith(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: base.titleTextStyle?.copyWith(fontSize: 16),
  );

  // ================= InputDecorationTheme ================================
  static InputDecorationTheme _inputDecorationTheme(ColorScheme colorScheme) =>
      InputDecorationTheme(
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface.withValues(alpha: 0.7),
        ),
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface.withValues(alpha: 0.5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          borderSide: BorderSide(
            width: AppConstants.borderSideWidth,
            color: colorScheme.onSurface.withValues(alpha: 0.3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          borderSide: BorderSide(
            color: colorScheme.onSurface.withValues(alpha: 0.3),
            width: AppConstants.borderSideWidth,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: AppConstants.borderSideWidth + 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          borderSide: BorderSide(
            color: colorScheme.error,
            width: AppConstants.borderSideWidth,
          ),
        ),
        errorStyle: TextStyle(
          color: colorScheme.error,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      );
}
