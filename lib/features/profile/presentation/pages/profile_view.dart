import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

/*constants */
import 'package:shoppe/core/constants/app_assets.dart';

/*shared widgets */
import 'package:shoppe/core/widgets/navigations/app_bottom_navigation_bar.dart';
import 'package:shoppe/core/widgets/navigations/app_appbar.dart';

/*widgets */
import 'package:shoppe/features/profile/presentation/widgets/announcement.dart';
import 'package:shoppe/features/profile/presentation/widgets/recently_viewed.dart';
import 'package:shoppe/features/profile/presentation/widgets/my_order.dart';
import 'package:shoppe/features/profile/presentation/widgets/stories.dart';
import 'package:shoppe/features/profile/presentation/widgets/new_items.dart';
import 'package:shoppe/features/profile/presentation/widgets/most_popular_item.dart';
import 'package:shoppe/core/widgets/cards/categories_item.dart';
import 'package:shoppe/features/profile/presentation/widgets/flash_sale.dart';
import 'package:shoppe/features/profile/presentation/widgets/top_products.dart';
import 'package:shoppe/features/profile/presentation/widgets/just_for_you.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;

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

    return Scaffold(
      backgroundColor: palette.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            AppGap.hLG,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                AppStrings.helloRomina,
                style: AppTextStyle.ralewayBold28px,
              ),
            ),
            AppGap.hMD,

            Announcement(),

            AppGap.hMD,

            RecentlyViewed(),

            AppGap.hLG,

            MyOrder(),

            AppGap.hLG,

            Stories(),

            AppGap.hLG,

            NewItems(),

            AppGap.hLG,

            MostPopularItem(),

            AppGap.hLG,

            CategoriesItem(
              categories: _categories,
            ),

            AppGap.hLG,

            FlashSale(),

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
