import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_theme_colors.tailor.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class AppThemeColors extends ThemeExtension<AppThemeColors>
    with _$AppThemeColorsTailorMixin {
  const AppThemeColors({
    required this.background,
    required this.surface,
    required this.textPrimary,
    required this.textSecondary,
    required this.primary,
    required this.primaryContainer,
    required this.accent,
    required this.info,
    required this.premium,
    required this.outline,
  });

  @override
  final Color background;

  @override
  final Color surface;

  @override
  final Color textPrimary;

  @override
  final Color textSecondary;

  @override
  final Color primary;

  @override
  final Color primaryContainer;

  @override
  final Color accent;

  @override
  final Color info;

  @override
  final Color premium;

  @override
  final Color outline;
}
