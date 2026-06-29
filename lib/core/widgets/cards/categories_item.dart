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
  final List<Map<String, Map<String, dynamic>>> categories;

  const CategoriesItem({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;

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

          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index]["cat"];
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
                        categories[index]["cat"]!["name"],
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
                          categories[index]["cat"]!["counts"],
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
