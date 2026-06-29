import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';
import 'package:shoppe/core/constants/app_assets.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

class SlidingImages extends StatelessWidget {
  const SlidingImages({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 130,
        width: double.infinity,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          image: DecorationImage(
            image: AssetImage(
              AppAssets.shopImage,
            ),
            fit: BoxFit.cover,
          ),
        ),

        child: Stack(
          children: [
            Positioned(
              left: -15,
              bottom: -70.43,
              child: Transform.rotate(
                angle: -100 * 3.1416 / 180,
                child: SvgPicture.asset(
                  AppAssets.bubble3,
                  height: 150,
                  width: 136,
                  color: palette.yellow300,
                ),
              ),
            ),

            Positioned(
              right: -130,
              bottom: -70,
              child: Transform.rotate(
                angle: 72 * 3.1416 / 180,
                child: SvgPicture.asset(
                  AppAssets.bubble3,
                  height: 221,
                  width: 166,
                  color: palette.yellow400,
                ),
              ),
            ),

            Positioned(
              right: -65,
              bottom: -54,
              child: Transform.rotate(
                angle: 0 * 3.1416 / 180,
                child: SvgPicture.asset(
                  AppAssets.bubble3,
                  height: 150,
                  width: 136,
                  color: palette.yellow300,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: AppSpacing.md,
                top: AppSpacing.sm,
                bottom: AppSpacing.xs,
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    AppStrings.bigSale,
                    style: AppTextStyle.ralewayBold29px.copyWith(
                      color: palette.white,
                    ),
                  ),
                  Text(
                    AppStrings.upto50percent,
                    style: AppTextStyle.nunitoSansBold12px.copyWith(
                      color: palette.white,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    AppStrings.happyNow,
                    style: AppTextStyle.ralewayBold11px.copyWith(
                      color: palette.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
