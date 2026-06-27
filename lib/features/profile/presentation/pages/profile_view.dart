import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

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
import 'package:shoppe/features/profile/presentation/widgets/categories_item.dart';
import 'package:shoppe/features/profile/presentation/widgets/flash_sale.dart';
import 'package:shoppe/features/profile/presentation/widgets/top_products.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;

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

            CategoriesItem(),

            AppGap.hLG,

            FlashSale(),

            AppGap.hLG,

            TopProducts(),

            AppGap.hLG,
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
