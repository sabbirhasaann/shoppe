/*packages */
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*constatns */
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

/*widgets */
import 'package:shoppe/core/widgets/buttons/app_button.dart';
import 'package:shoppe/core/widgets/buttons/app_icon_button.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: elevation.cardShadow,
                ),
                child: CircleAvatar(
                  radius: 67,
                  backgroundColor: palette.white,
                  child: SvgPicture.asset(
                    AppAssets.bag,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),

              Text(
                AppStrings.title,
                style: AppTextStyle.ralewayBold52px,
              ),

              const SizedBox(
                height: 18,
              ),

              Text(
                AppStrings.startViewSubtitle,
                style: AppTextStyle.nunitoSansLight19px,
                textAlign: .center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            right: 24.0,
            top: 24.0,
            bottom: 70.0,
          ),
          child: Column(
            // Forces column to wrap content height
            mainAxisSize: MainAxisSize.min,
            children: [
              AppButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('createAccountView/');
                },
                label: AppStrings.startViewPrimaryButtonLable,
                width: double.infinity,
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppStrings.haveAccount),
                  const SizedBox(width: 16),
                  AppIconButton(
                    onPressed: () {},
                    iconPath: AppAssets.arrowRight,
                    splashRadius: 30,
                    iconSize: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
