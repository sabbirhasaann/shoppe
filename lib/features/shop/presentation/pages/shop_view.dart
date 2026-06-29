import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';
import 'package:shoppe/core/constants/app_assets.dart';

/*shared widget*/
import 'package:shoppe/core/widgets/inputs/app_text_form_field.dart';
import 'package:shoppe/core/widgets/builders/app_page_view_builder.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

/*widgets */
import 'package:shoppe/features/shop/presentation/widgets/sliding_images.dart';

/*shared widget*/
import 'package:shoppe/core/widgets/cards/categories_item.dart';
import 'package:shoppe/core/widgets/components/top_products.dart';
import 'package:shoppe/core/widgets/components/flash_sale.dart';
import 'package:shoppe/core/widgets/components/just_for_you.dart';
import 'package:shoppe/core/widgets/components/most_popular_item.dart';
import 'package:shoppe/core/widgets/navigations/app_bottom_navigation_bar.dart';


class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
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

      {
        "cat": {
          "name": AppStrings.watch,
          "counts": AppStrings.c218,
          "items": [
            AppAssets.watch1,
            AppAssets.watch2,
            AppAssets.watch3,
            AppAssets.watch4,
          ],
        },
      },
      {
        "cat": {
          "name": AppStrings.hoodies,
          "counts": AppStrings.c218,
          "items": [
            AppAssets.hoodies1,
            AppAssets.hoodies2,
            AppAssets.hoodies3,
            AppAssets.hoodies4,
          ],
        },
      },
    ];

    final palette = Theme.of(context).extension<AppColorPalette>()!;
    return Scaffold(
      backgroundColor: palette.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 40,
            bottom: 20,
          ),
          child: Row(
            children: [
              Text(
                AppStrings.shop,
                style: AppTextStyle.ralewayBold28px,
              ),

              AppGap.wLG,

              Expanded(
                child: AppTextFormField(
                  hintText: AppStrings.search,
                  hintStyle: AppTextStyle.ralewayMedium16px,
                  suffixAsset: AppAssets.camera,
                  suffixIconColor: palette.primary,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppPageViewBuilder(
              widget: [
                SlidingImages(),
                SlidingImages(),
                SlidingImages(),
              ],
            ),

            const SizedBox(
              height: 19,
            ),

            CategoriesItem(
              categories: _categories,
            ),

            AppGap.hLG,

            TopProducts(),

            AppGap.hLG,

            FlashSale(),

            AppGap.hLG,

            MostPopularItem(),

            AppGap.hLG,

            TopProducts(),

            AppGap.hLG,

            JustForYou(),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
