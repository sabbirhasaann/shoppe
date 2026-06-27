import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({super.key});
  @override
  Widget build(BuildContext context) {
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;
    final palette = Theme.of(context).extension<AppColorPalette>()!;

    final List<String> _appAssets = [
      AppAssets.avatar2,
      AppAssets.avatar3,
      AppAssets.avatar4,
      AppAssets.avatar5,
      AppAssets.avatar6,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            AppStrings.recentlyViewed,
            style: AppTextStyle.ralewayBold21px,
          ),
          AppGap.hSM,
          Row(
            mainAxisAlignment: .spaceBetween,
            children: List.generate(_appAssets.length, (index) {
              return Container(
                height: 60,
                width: 60,
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
                      _appAssets[index],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
