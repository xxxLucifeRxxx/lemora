import 'package:flutter/material.dart';
import 'package:lemora/app/theme/app_theme_colors.dart';

abstract final class AppTheme {
  static const colors = AppThemeColors(
    background: Color(0xFFF8F6F2),
    surface: Color(0xFFFFFFFF),
    textPrimary: Color(0xFF1C1B1A),
    textSecondary: Color(0xFF8A8680),
    primary: Color(0xFF2D8653),
    primaryContainer: Color(0xFFEEF6F1),
    accent: Color(0xFFE5614A),
    info: Color(0xFF4585B8),
    premium: Color(0xFFC9973A),
    outline: Color(0xFFE5E1DB),
  );

  static final light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: colors.background,
    colorScheme: ColorScheme.light(
      primary: colors.primary,
      onPrimary: Colors.white,
      primaryContainer: colors.primaryContainer,
      onPrimaryContainer: colors.textPrimary,
      secondary: colors.info,
      error: colors.accent,
      surface: colors.surface,
      onSurface: colors.textPrimary,
      outline: colors.outline,
    ),
    extensions: const [colors],
    textTheme: TextTheme(
      displaySmall: TextStyle(
        color: colors.textPrimary,
        fontSize: 36,
        fontWeight: FontWeight.w600,
        height: 1.2,
      ),
      titleLarge: TextStyle(
        color: colors.textPrimary,
        fontSize: 22,
        fontWeight: FontWeight.w600,
        height: 1.3,
      ),
      bodyLarge: TextStyle(
        color: colors.textPrimary,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
      bodyMedium: TextStyle(
        color: colors.textSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.4,
      ),
    ),
  );
}
