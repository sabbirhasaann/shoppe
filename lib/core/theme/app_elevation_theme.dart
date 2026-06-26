/*packages */
import 'package:flutter/material.dart';
import 'package:shoppe/core/constants/app_shadows.dart';

class AppElevationTheme extends ThemeExtension<AppElevationTheme> {
  final List<BoxShadow> cardShadow;
  final BoxShadow onboardHelloShadow;
  final BoxShadow bottomNavigationBarShadow;
  final BoxShadow avatarShadow;
  final BoxShadow newItemShadow;
  const AppElevationTheme({
    required this.cardShadow,
    required this.onboardHelloShadow,
    required this.bottomNavigationBarShadow,
    required this.avatarShadow,
    required this.newItemShadow,
  });

  factory AppElevationTheme.light() => const AppElevationTheme(
    cardShadow: [AppShadow.startViewCircleShadowLight],
    onboardHelloShadow: AppShadow.onboardHelloShadow,
    bottomNavigationBarShadow: AppShadow.navigationBarShadow,
    avatarShadow: AppShadow.offset0x0y15br0sr16op,
    newItemShadow: AppShadow.offset0x5y10br0sr10op,
  );

  factory AppElevationTheme.dark() => const AppElevationTheme(
    cardShadow: [AppShadow.startViewCircleShadowDark],
    onboardHelloShadow: AppShadow.onboardHelloShadow,
    bottomNavigationBarShadow: AppShadow.navigationBarShadow,
    avatarShadow: AppShadow.offset0x0y15br0sr16op,
    newItemShadow: AppShadow.offset0x5y10br0sr10op,
  );

  @override
  AppElevationTheme copyWith({
    List<BoxShadow>? cardShadow,
    BoxShadow? onboardHelloShadow,
    BoxShadow? bottomNavigationBarShadow,
    BoxShadow? avatarShadow,
    BoxShadow? newItemShadow,
  }) {
    return AppElevationTheme(
      cardShadow: cardShadow ?? this.cardShadow,
      onboardHelloShadow: onboardHelloShadow ?? this.onboardHelloShadow,
      bottomNavigationBarShadow:
          bottomNavigationBarShadow ?? this.bottomNavigationBarShadow,
      avatarShadow: avatarShadow ?? this.avatarShadow,
      newItemShadow: newItemShadow ?? this.newItemShadow,
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
      avatarShadow:
          BoxShadow.lerp(avatarShadow, other.avatarShadow, t) ?? avatarShadow,
      newItemShadow:
          BoxShadow.lerp(newItemShadow, other.newItemShadow, t) ??
          newItemShadow,
    );
  }
}
