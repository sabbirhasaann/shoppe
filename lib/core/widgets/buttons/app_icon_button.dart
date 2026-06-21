import 'package:flutter/material.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

class AppIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onPressed;
  final bool outlined;
  final double iconSize;
  final double splashRadius;
  const AppIconButton({
    super.key,
    required this.iconPath,
    required this.onPressed,
    this.outlined = false,
    this.iconSize = 24,
    this.splashRadius = 35,
  });

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    // return Ink(
    //   decoration: const ShapeDecoration(
    //     shape: CircleBorder(),
    //   ),
    //   child: IconButton(
    //     icon: Image.asset(iconPath),
    //     onPressed: onPressed,
    //   ),
    // );

    if (outlined) {
      return IconButton.outlined(
        onPressed: onPressed,
        icon: Image.asset(iconPath),
      );
    }
    // method 2
    return IconButton.filled(
      onPressed: onPressed,
      icon: Image.asset(iconPath),
      iconSize: iconSize,
      splashRadius: splashRadius,
      style: IconButton.styleFrom(
        backgroundColor: palette.primary,
      ),
    );
  }
}
