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

class NewItems extends StatelessWidget {
  const NewItems({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;
    final List<String> _newItems = [
      AppAssets.product1,
      AppAssets.product2,
      AppAssets.product3,
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(AppStrings.newItem, style: AppTextStyle.ralewayBold21px),
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
          height: 204,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _newItems.length,
            itemBuilder: (context, index) {
              return Container(
                width: 130,
                margin: EdgeInsets.only(
                  left: index == 0 ? 20 : 0,
                ),
                child: Column(
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
                        _newItems[index],
                        height: 130,
                        width: 130,
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
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
