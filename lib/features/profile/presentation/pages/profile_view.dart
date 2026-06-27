import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';
import 'package:shoppe/core/constants/app_assets.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

/*shared widgets */
import 'package:shoppe/core/widgets/navigations/app_bottom_navigation_bar.dart';
import 'package:shoppe/core/widgets/navigations/app_appbar.dart';
import 'package:shoppe/core/widgets/buttons/app_icon_button.dart';

/*widgets */
import 'package:shoppe/features/profile/presentation/widgets/new_items.dart';
import 'package:shoppe/features/profile/presentation/widgets/most_popular_item.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;

    final List<String> _appAssets = [
      AppAssets.avatar2,
      AppAssets.avatar3,
      AppAssets.avatar4,
      AppAssets.avatar5,
      AppAssets.avatar6,
    ];

    final List<String> _orders = [
      AppStrings.toPay,
      AppStrings.toReceieve,
      AppStrings.toReview,
    ];

    final List<String> _stories = [
      AppAssets.story1,
      AppAssets.story2,
      AppAssets.story3,
      AppAssets.story4,
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  AppGap.hLG,
                  Text(
                    AppStrings.helloRomina,
                    style: AppTextStyle.ralewayBold28px,
                  ),
                  AppGap.hMD,
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.md,
                      vertical: AppSpacing.sm,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: palette.backgroundGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          AppStrings.announcement,
                          style: AppTextStyle.ralewayBold14px,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                AppStrings.announcementInfo,
                                style: AppTextStyle.nunitoSansRegular10px,
                              ),
                            ),
                            AppGap.wLG,
                            AppIconButton(
                              onPressed: () {},
                              iconPath: AppAssets.arrowRight,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  AppGap.hMD,
                  Text(
                    AppStrings.recentlyViewed,
                    style: AppTextStyle.ralewayBold21px,
                  ),
                  AppGap.hSM,
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: List.generate(_appAssets.length, (index) {
                      return Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: palette.white,
                          ),
                          boxShadow: [
                            elevation.avatarShadow,
                          ],
                          image: DecorationImage(
                            image: AssetImage(
                              _appAssets[index],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),

                  AppGap.hLG,
                  Text(
                    AppStrings.myOrder,
                    style: AppTextStyle.ralewayBold21px,
                  ),
                  AppGap.hMD,
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: List.generate(_orders.length, (index) {
                      return Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.lg,
                              vertical: AppSpacing.sm,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(18),
                              color: palette.lightPeriwinkle,
                            ),
                            child: Text(
                              _orders[index],
                              style: AppTextStyle.ralewayMedium16px.copyWith(
                                color: palette.primary,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: CircleAvatar(
                              radius: 7,
                              backgroundColor: palette.white,
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: palette.green,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                  AppGap.hLG,
                  Text(
                    AppStrings.stories,
                    style: AppTextStyle.ralewayBold21px,
                  ),
                ],
              ),
            ),
            AppGap.hSM,
            SizedBox(
              height: 175,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _stories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 20 : 0,
                      right: AppSpacing.xs,
                    ),
                    child: SizedBox(
                      height: 175,
                      width: 104,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          _stories[index],
                          fit: BoxFit.cover,
                          alignment: .center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            AppGap.hLG,

            NewItems(),

            AppGap.hLG,

            MostPopularItem(),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}
