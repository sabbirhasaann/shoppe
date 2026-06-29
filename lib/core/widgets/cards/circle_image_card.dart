import 'package:flutter/material.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

class CircleImageCard extends StatelessWidget {
  final String asset;
  final double height;
  final double width;

  const CircleImageCard({
    super.key,
    required this.asset,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;
    final palette = Theme.of(context).extension<AppColorPalette>()!;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 4,
          color: palette.white,
        ),
        boxShadow: [
          elevation.avatarShadow,
        ],
        image: DecorationImage(
          image: AssetImage(
            asset,
          ),
        ),
      ),
    );
  }
}
