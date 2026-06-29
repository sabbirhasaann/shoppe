import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;

    final List<String> _time = [
      AppStrings.c00,
      AppStrings.c36,
      AppStrings.c58,
    ];

    final List<String> _saleItems = [
      AppAssets.product7,
      AppAssets.product8,
      AppAssets.product9,
      AppAssets.product1,
      AppAssets.product10,
      AppAssets.product11,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                AppStrings.flashSale,
                style: AppTextStyle.ralewayBold21px,
              ),
              const Spacer(),

              Image.asset(
                AppAssets.clock,
                width: 17,
                height: 20,
                color: palette.primary,
              ),

              AppGap.wSM,

              for (int i = 0; i < _time.length; ++i)
                Container(
                  padding: const EdgeInsets.all(4),
                  margin: EdgeInsets.only(
                    right: i == _time.length - 1 ? 0 : 4,
                  ),
                  decoration: BoxDecoration(
                    color: palette.pink100,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(
                    _time[i],
                    style: AppTextStyle.ralewayBold17px,
                  ),
                ),
            ],
          ),
          AppGap.hLG,
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 0.95,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _saleItems.length,
            itemBuilder: (context, index) {
              final item = _saleItems[index];
              return Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: palette.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    elevation.newItemShadow,
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
