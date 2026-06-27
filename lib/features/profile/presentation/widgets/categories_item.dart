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

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;

    final List<Map<String, Map<String, dynamic>>> _categories = [
      {
        "cat": {
          "name": AppStrings.clothing,
          "counts": AppStrings.c109,
          "items": [
            AppAssets.clothing1,
            AppAssets.clothing2,
            AppAssets.clothing3,
            AppAssets.clothing4,
          ],
        },
      },

      {
        "cat": {
          "name": AppStrings.shoes,
          "counts": AppStrings.c530,
          "items": [
            AppAssets.shoes1,
            AppAssets.shoes2,
            AppAssets.shoes3,
            AppAssets.shoes4,
          ],
        },
      },

      {
        "cat": {
          "name": AppStrings.bags,
          "counts": AppStrings.c87,
          "items": [
            AppAssets.bag1,
            AppAssets.bag2,
            AppAssets.bag3,
            AppAssets.bag4,
          ],
        },
      },

      {
        "cat": {
          "name": AppStrings.lingerie,
          "counts": AppStrings.c218,
          "items": [
            AppAssets.lingerie1,
            AppAssets.lingerie2,
            AppAssets.lingerie3,
            AppAssets.lingerie4,
          ],
        },
      },
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                AppStrings.categories,
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

        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.82,
          ),

          itemCount: _categories.length,
          itemBuilder: (context, index) {
            final category = _categories[index]["cat"];
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: palette.white,
                boxShadow: [
                  elevation.newItemShadow,
                ],
              ),
              child: Column(
                mainAxisSize: .min,
                mainAxisAlignment: .center,
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                    ),
                    itemCount: category!["items"].length,
                    itemBuilder: (ctx, idx) {
                      final item = category["items"];
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          item[idx],
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                  AppGap.hSM,
                  Row(
                    children: [
                      Text(
                        _categories[index]["cat"]!["name"],
                        style: AppTextStyle.ralewayBold17px,
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: palette.backgroundGrey,
                        ),
                        child: Text(
                          _categories[index]["cat"]!["counts"],
                          style: AppTextStyle.ralewayBold12px,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}


// Column(
//                   mainAxisSize: .min,
//                   children: [
//                     Expanded(
//                       child: GridView.builder(
//                         shrinkWrap: true,
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                         ),
//                         itemCount: 4,
//                         itemBuilder: (context, index) {
//                           return ClipRRect(
//                             borderRadius: BorderRadius.circular(5),
//                             child: Image.asset(
//                               AppAssets.product1,
//                               height: 75,
//                               width: 75,
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           _categories[index],
//                           style: AppTextStyle.ralewayBold17px,
//                         ),

//                         const Spacer(),

//                         Container(
//                           padding: const EdgeInsets.all(4),
//                           decoration: BoxDecoration(
//                             color: palette.backgroundGrey,
//                           ),
//                           child: Text(
//                             AppStrings.popular,
//                             style: AppTextStyle.ralewayBold12px,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),