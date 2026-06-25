import 'package:flutter/material.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

/*constants */
import 'package:shoppe/core/constants/app_assets.dart';

class AppAppBar extends StatelessWidget {
  const AppAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
        left: 20,
        right: 20,
      ),
      child: Row(
        children: [
          Container(
            height: 48,
            width: 48,
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
                  AppAssets.avatar,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
