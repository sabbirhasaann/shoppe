import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

class ItemCard extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;

  const ItemCard({
    super.key,
    required this.imagePath,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;

    return Column(
      mainAxisSize: .min,
      crossAxisAlignment: .start,
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          margin: EdgeInsets.only(
            right: 8,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
            color: palette.white,
            boxShadow: [
              elevation.newItemShadow,
            ],
          ),

          child: Image.asset(
            imagePath,
            height: height,
            width: width,
          ),
        ),

        AppGap.hXS,

        Text(
          AppStrings.newProductInfo,
          style: AppTextStyle.nunitoSansRegular12px,
        ),

        AppGap.hXS,

        Text(
          AppStrings.newProductPrice,
          style: AppTextStyle.ralewayBold17px,
        ),
      ],
    );
  }
}
