import 'package:flutter/material.dart';

abstract class AppSpacing {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xlarge = 40;
  static const double xxl = 48;
  static const double xxxl = 56;
  static const double jumbo = 64;
}

abstract class AppRadius {
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 24;
  static const double full = 999;
}

abstract class AppGap {
  // Vertical
  static const hXS = SizedBox(height: AppSpacing.xs);
  static const hSM = SizedBox(height: AppSpacing.sm);
  static const hMD = SizedBox(height: AppSpacing.md);
  static const hLG = SizedBox(height: AppSpacing.lg);
  static const hXL = SizedBox(height: AppSpacing.xl);
  static const hXLarge = SizedBox(height: AppSpacing.xlarge);
  static const hXXL = SizedBox(height: AppSpacing.xxl);
  static const hJumbo = SizedBox(height: AppSpacing.jumbo);

  // Horizontal
  static const wXS = SizedBox(width: AppSpacing.xs);
  static const wSM = SizedBox(width: AppSpacing.sm);
  static const wMD = SizedBox(width: AppSpacing.md);
  static const wLG = SizedBox(width: AppSpacing.lg);
  static const wXL = SizedBox(width: AppSpacing.xl);
  static const wXLarge = SizedBox(width: AppSpacing.xlarge);
  static const wXXL = SizedBox(width: AppSpacing.xxl);
  static const wJumbo = SizedBox(width: AppSpacing.jumbo);
}

abstract class AppPadSymmetric {
  // Horizontal
  static const hXS = EdgeInsets.symmetric(horizontal: AppSpacing.xs);
  static const hSM = EdgeInsets.symmetric(horizontal: AppSpacing.sm);
  static const hMD = EdgeInsets.symmetric(horizontal: AppSpacing.md);
  static const hLG = EdgeInsets.symmetric(horizontal: AppSpacing.lg);
  static const hXL = EdgeInsets.symmetric(horizontal: AppSpacing.xl);
  static const hXLarge = EdgeInsets.symmetric(horizontal: AppSpacing.xlarge);
  static const hXXL = EdgeInsets.symmetric(horizontal: AppSpacing.xxl);
  static const hJumbo = EdgeInsets.symmetric(horizontal: AppSpacing.jumbo);

  // Vertical
  static const vXS = EdgeInsets.symmetric(vertical: AppSpacing.xs);
  static const vSM = EdgeInsets.symmetric(vertical: AppSpacing.sm);
  static const vMD = EdgeInsets.symmetric(vertical: AppSpacing.md);
  static const vLG = EdgeInsets.symmetric(vertical: AppSpacing.lg);
  static const vXL = EdgeInsets.symmetric(vertical: AppSpacing.xl);
  static const vXLarge = EdgeInsets.symmetric(vertical: AppSpacing.xlarge);
  static const vXXL = EdgeInsets.symmetric(vertical: AppSpacing.xxl);
  static const vJumbo = EdgeInsets.symmetric(vertical: AppSpacing.jumbo);
}
