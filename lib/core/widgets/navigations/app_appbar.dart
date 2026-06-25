import 'package:flutter/material.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

/*constants */
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_spacing.dart';
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';

class AppAppBar extends StatelessWidget {
  const AppAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
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
          AppGap.wMD,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: palette.primary,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(AppRadius.full),
            ),
            child: Text(
              AppStrings.myActivity,
              style: AppTextStyle.ralewayMedium16px.copyWith(
                color: palette.white,
              ),
            ),
          ),
          const Spacer(),
          CircleAvatar(
            radius: 18,
            backgroundColor: palette.black.withValues(
              alpha: 0.05,
            ),

            child: Image.asset(
              width: 20,
              height: 16,
              alignment: .center,
              AppAssets.voucher,
              fit: BoxFit.cover,
            ),
          ),
          AppGap.wMD,
          Stack(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: palette.black.withValues(
                  alpha: 0.05,
                ),

                child: Image.asset(
                  width: 20,
                  height: 16,
                  alignment: .center,
                  AppAssets.message,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                right: 0,

                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: palette.primary,
                  ),
                ),
              ),
            ],
          ),
          AppGap.wMD,
          CircleAvatar(
            radius: 18,
            backgroundColor: palette.black.withValues(
              alpha: 0.05,
            ),

            child: Image.asset(
              width: 20,
              height: 16,
              alignment: .center,
              AppAssets.settings,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
