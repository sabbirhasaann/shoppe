/*packages */
import 'package:flutter/material.dart';
import 'package:shoppe/core/constants/app_shadows.dart';

class AppElevationTheme extends ThemeExtension<AppElevationTheme> {
  final List<BoxShadow> cardShadow;

  const AppElevationTheme({required this.cardShadow});

  factory AppElevationTheme.light() => const AppElevationTheme(
    cardShadow: [AppShadow.startViewCircleShadowLight],
  );

  factory AppElevationTheme.dark() => const AppElevationTheme(
    cardShadow: [AppShadow.startViewCircleShadowDark],
  );

  @override
  AppElevationTheme copyWith({List<BoxShadow>? cardShadow}) {
    return AppElevationTheme(cardShadow: cardShadow ?? this.cardShadow);
  }

  @override
  AppElevationTheme lerp(ThemeExtension<AppElevationTheme>? other, double t) {
    if (other is! AppElevationTheme) return this;
    return AppElevationTheme(
      cardShadow:
          BoxShadow.lerpList(cardShadow, other.cardShadow, t) ?? cardShadow,
    );
  }
}
