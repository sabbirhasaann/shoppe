import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

/*widgets */
import 'package:shoppe/core/widgets/buttons/app_icon_button.dart';

class MostPopularItem extends StatelessWidget {
  const MostPopularItem({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;

    final List<String> _mostPopular = [
      AppAssets.product3,
      AppAssets.product4,
      AppAssets.product5,
      AppAssets.product6,
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                AppStrings.mostPopular,
                style: AppTextStyle.ralewayBold21px,
              ),
              const Spacer(),
              Text(
                AppStrings.seeAll,
                style: AppTextStyle.ralewayBold15px,
              ),
              AppGap.wMD,
              AppIconButton(
                onPressed: () {},
                iconPath: AppAssets.arrowRight,
              ),
            ],
          ),
        ),

        AppGap.hSM,

        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _mostPopular.length,
            itemBuilder: (context, index) {
              return Container(
                height: 140,
                width: 104,
                padding: const EdgeInsets.all(4),
                margin: EdgeInsets.only(
                  left: index == 0 ? 20 : 0,
                  right: 8,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(9),
                  color: palette.white,
                  boxShadow: [
                    elevation.newItemShadow,
                  ],
                ),
                child: Column(
                  mainAxisSize: .min,

                  children: [
                    Image.asset(
                      _mostPopular[index],
                      height: 103,
                      width: 94,
                    ),
                    AppGap.hSM,

                    Row(
                      mainAxisSize: .min,
                      children: [
                        Text(
                          AppStrings.popular,
                          style: AppTextStyle.ralewayBold15px,
                        ),
                        const SizedBox(width: 1),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            AppAssets.heartFilled,
                            height: 11,
                            width: 11,
                          ),
                        ),
                        AppGap.wMD,
                        Text(
                          AppStrings.neW,
                          style: AppTextStyle.ralewayMedium13px,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        AppGap.hLG,
      ],
    );
  }
}
