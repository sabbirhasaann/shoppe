import 'package:flutter/material.dart';

import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/constants/app_colors.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

ThemeData get lightTheme => ThemeData(
  useMaterial3: true,
  extensions: <ThemeExtension<dynamic>>[
    AppColorPalette(
      primary: AppColors.primary,
      black: AppColors.black,
      yellow: AppColors.yellow,
      yellow300: AppColors.yellow300,
      yellow400: AppColors.yellow400,
      periwinkle: AppColors.periwinkle,
      lightPeriwinkle: AppColors.lightPeriwinkle,
      pink100: AppColors.pink100,
      pink200: AppColors.pink200,
      pink300: AppColors.pink300,
      pink400: AppColors.pink400,
      pink500: AppColors.pink500,
      white: AppColors.white,
      grey20: AppColors.grey20,
      backgroundGrey: AppColors.backgroundGrey,
      green: AppColors.green,
    ),
    AppElevationTheme.light(),
  ],
);

ThemeData get darkTheme => ThemeData(
  useMaterial3: true,
  extensions: <ThemeExtension<dynamic>>[
    AppColorPalette(
      primary: AppColors.primary,
      black: AppColors.black,
      yellow: AppColors.yellow,
      yellow300: AppColors.yellow300,
      yellow400: AppColors.yellow400,
      periwinkle: AppColors.periwinkle,
      lightPeriwinkle: AppColors.lightPeriwinkle,
      pink100: AppColors.pink100,
      pink200: AppColors.pink200,
      pink300: AppColors.pink300,
      pink400: AppColors.pink400,
      pink500: AppColors.pink500,
      white: AppColors.white,
      grey20: AppColors.grey20,
      backgroundGrey: AppColors.backgroundGrey,
      green: AppColors.green,
    ),
    AppElevationTheme.dark(),
  ],
);
