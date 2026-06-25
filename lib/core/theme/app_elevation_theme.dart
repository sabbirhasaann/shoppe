/*packages */
import 'package:flutter/material.dart';
import 'package:shoppe/core/constants/app_shadows.dart';

class AppElevationTheme extends ThemeExtension<AppElevationTheme> {
  final List<BoxShadow> cardShadow;
  final BoxShadow onboardHelloShadow;
  final BoxShadow bottomNavigationBarShadow;

  const AppElevationTheme({
    required this.cardShadow,
    required this.onboardHelloShadow,
    required this.bottomNavigationBarShadow,
  });

  factory AppElevationTheme.light() => const AppElevationTheme(
    cardShadow: [AppShadow.startViewCircleShadowLight],
    onboardHelloShadow: AppShadow.onboardHelloShadow,
    bottomNavigationBarShadow: AppShadow.navigationBarShadow,
  );

  factory AppElevationTheme.dark() => const AppElevationTheme(
    cardShadow: [AppShadow.startViewCircleShadowDark],
    onboardHelloShadow: AppShadow.onboardHelloShadow,
    bottomNavigationBarShadow: AppShadow.navigationBarShadow,
  );

  @override
  AppElevationTheme copyWith({
    List<BoxShadow>? cardShadow,
    BoxShadow? onboardShadowHello,
    BoxShadow? bottomNavigationBarShadow,
  }) {
    return AppElevationTheme(
      cardShadow: cardShadow ?? this.cardShadow,
      onboardHelloShadow: onboardHelloShadow,
      bottomNavigationBarShadow:
          bottomNavigationBarShadow ?? this.bottomNavigationBarShadow,
    );
  }

  @override
  AppElevationTheme lerp(ThemeExtension<AppElevationTheme>? other, double t) {
    if (other is! AppElevationTheme) return this;
    return AppElevationTheme(
      cardShadow:
          BoxShadow.lerpList(cardShadow, other.cardShadow, t) ?? cardShadow,
      onboardHelloShadow:
          BoxShadow.lerp(
            onboardHelloShadow,
            other.onboardHelloShadow,
            t,
          ) ??
          onboardHelloShadow, // 3. Added null safety handling fallback for lerp
      bottomNavigationBarShadow:
          BoxShadow.lerp(
            bottomNavigationBarShadow,
            other.bottomNavigationBarShadow,
            t,
          ) ??
          bottomNavigationBarShadow,
    );
  }
}
