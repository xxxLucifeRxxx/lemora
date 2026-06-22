// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_theme_colors.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppThemeColorsTailorMixin on ThemeExtension<AppThemeColors> {
  Color get background;
  Color get surface;
  Color get textPrimary;
  Color get textSecondary;
  Color get primary;
  Color get primaryContainer;
  Color get accent;
  Color get info;
  Color get premium;
  Color get outline;

  @override
  AppThemeColors copyWith({
    Color? background,
    Color? surface,
    Color? textPrimary,
    Color? textSecondary,
    Color? primary,
    Color? primaryContainer,
    Color? accent,
    Color? info,
    Color? premium,
    Color? outline,
  }) {
    return AppThemeColors(
      background: background ?? this.background,
      surface: surface ?? this.surface,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      primary: primary ?? this.primary,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      accent: accent ?? this.accent,
      info: info ?? this.info,
      premium: premium ?? this.premium,
      outline: outline ?? this.outline,
    );
  }

  @override
  AppThemeColors lerp(
    covariant ThemeExtension<AppThemeColors>? other,
    double t,
  ) {
    if (other is! AppThemeColors) return this as AppThemeColors;
    return AppThemeColors(
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      primaryContainer: Color.lerp(
        primaryContainer,
        other.primaryContainer,
        t,
      )!,
      accent: Color.lerp(accent, other.accent, t)!,
      info: Color.lerp(info, other.info, t)!,
      premium: Color.lerp(premium, other.premium, t)!,
      outline: Color.lerp(outline, other.outline, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppThemeColors &&
            const DeepCollectionEquality().equals(
              background,
              other.background,
            ) &&
            const DeepCollectionEquality().equals(surface, other.surface) &&
            const DeepCollectionEquality().equals(
              textPrimary,
              other.textPrimary,
            ) &&
            const DeepCollectionEquality().equals(
              textSecondary,
              other.textSecondary,
            ) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality().equals(
              primaryContainer,
              other.primaryContainer,
            ) &&
            const DeepCollectionEquality().equals(accent, other.accent) &&
            const DeepCollectionEquality().equals(info, other.info) &&
            const DeepCollectionEquality().equals(premium, other.premium) &&
            const DeepCollectionEquality().equals(outline, other.outline));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(surface),
      const DeepCollectionEquality().hash(textPrimary),
      const DeepCollectionEquality().hash(textSecondary),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(primaryContainer),
      const DeepCollectionEquality().hash(accent),
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(premium),
      const DeepCollectionEquality().hash(outline),
    );
  }
}

extension AppThemeColorsBuildContext on BuildContext {
  AppThemeColors get appThemeColors =>
      Theme.of(this).extension<AppThemeColors>()!;
}
