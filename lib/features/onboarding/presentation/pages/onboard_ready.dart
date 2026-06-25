import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*widgets */
import 'package:shoppe/core/widgets/buttons/app_button.dart';

class OnboardReady extends StatelessWidget {
  const OnboardReady({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;
    return Scaffold(
      backgroundColor: palette.white,
      body: Stack(
        children: [
          Positioned(
            left: -140.81,
            top: 239.16,
            child: Transform.rotate(
              angle: 108 * 3.1416 / 180,
              child: SvgPicture.asset(
                height: 442,
                width: 377,
                AppAssets.bubble3,
              ),
            ),
          ),
          Positioned(
            left: -147.44,
            top: -123.32,
            child: SvgPicture.asset(
              height: 442,
              width: 402,
              AppAssets.bubble2,
            ),
          ),

          Column(
            mainAxisAlignment: .center,
            children: [
              Container(
                width: 326,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: palette.white,
                  borderRadius: BorderRadius.circular(
                    30,
                  ),
                  boxShadow: [
                    elevation.onboardHelloShadow,
                  ],
                ),
                child: Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .center,
                  mainAxisSize: .min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(
                          30,
                        ),
                      ),
                      child: Image.asset(
                        AppAssets.onboardReady,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    AppGap.hXLarge,
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 42.0,
                        right: 42,
                        bottom: 44,
                      ),
                      child: Column(
                        mainAxisAlignment: .center,

                        children: [
                          Text(
                            AppStrings.ready,
                            style: AppTextStyle.ralewayBold28px,
                          ),
                          AppGap.hMD,
                          Text(
                            textAlign: TextAlign.center,
                            AppStrings.onboardHelloInfo,
                            style: AppTextStyle.nunitoSansLight19px,
                          ),
                          AppGap.hXL,
                          AppButton(
                            onPressed: () {
                              Navigator.of(
                                context,
                              ).pushReplacementNamed('profileView/');
                            },
                            label: AppStrings.letsStart,
                            width: 201,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              AppGap.hXL,

              Row(
                mainAxisAlignment: .center,
                children: List.generate(4, (index) {
                  return AnimatedContainer(
                    duration: Duration(seconds: 300),
                    margin: AppPadSymmetric.hSM,
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: palette.primary,
                    ),
                  );
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
