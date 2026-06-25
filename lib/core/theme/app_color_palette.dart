import 'package:flutter/material.dart';

@immutable
class AppColorPalette extends ThemeExtension<AppColorPalette> {
  final Color primary;
  final Color black;
  final Color yellow;
  final Color periwinkle;
  final Color lightPeriwinkle;
  final Color pink100;
  final Color pink200;
  final Color pink300;
  final Color pink400;
  final Color pink500;
  final Color white;
  final Color grey20;
  final Color backgroundGrey;
  final Color green;

  const AppColorPalette({
    required this.primary,
    required this.black,
    required this.yellow,
    required this.periwinkle,
    required this.lightPeriwinkle,
    required this.pink100,
    required this.pink200,
    required this.pink300,
    required this.pink400,
    required this.pink500,
    required this.white,
    required this.grey20,
    required this.backgroundGrey,
    required this.green,
  });

  @override
  AppColorPalette copyWith() => this;

  @override
  AppColorPalette lerp(ThemeExtension<AppColorPalette>? other, double t) {
    if (other is! AppColorPalette) return this;

    return AppColorPalette(
      primary: Color.lerp(primary, other.primary, t)!,
      black: Color.lerp(black, other.black, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      periwinkle: Color.lerp(periwinkle, other.periwinkle, t)!,
      lightPeriwinkle: Color.lerp(lightPeriwinkle, other.lightPeriwinkle, t)!,
      pink100: Color.lerp(pink100, other.pink100, t)!,
      pink200: Color.lerp(pink200, other.pink200, t)!,
      pink300: Color.lerp(pink300, other.pink300, t)!,
      pink400: Color.lerp(pink400, other.pink400, t)!,
      pink500: Color.lerp(pink500, other.pink500, t)!,
      white: Color.lerp(white, other.white, t)!,
      grey20: Color.lerp(grey20, other.grey20, t)!,
      backgroundGrey: Color.lerp(backgroundGrey, other.backgroundGrey, t)!,
      green: Color.lerp(green, other.green, t)!,
    );
  }
}
