import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_spacing.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_assets.dart';

/*widgets */
import 'package:shoppe/core/widgets/buttons/app_text_button.dart';
import 'package:shoppe/core/widgets/buttons/app_button.dart';
import 'package:shoppe/core/widgets/inputs/app_text_form_field.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    return Scaffold(
      backgroundColor: palette.white,
      body: Stack(
        children: [
          Positioned(
            right: -185,
            // Note: Usually you want top/bottom instead of right for absolute clipping
            bottom: -221,
            child: Transform.rotate(
              angle: -180 * 3.141592653589793 / 180,
              child: SvgPicture.asset(
                AppAssets.bubble3,
                height: 442,
                width: 373,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: .end,
              crossAxisAlignment: .start,
              children: [
                Text(
                  AppStrings.login,
                  style: AppTextStyle.ralewayBold52px,
                ),
                AppGap.hSM,
                Row(
                  children: [
                    Text(
                      AppStrings.greet,
                      style: AppTextStyle.nunitoSansLight19px,
                    ),

                    AppGap.wMD,
                    Image.asset(
                      AppAssets.heartFilled,
                      color: palette.black,
                    ),
                  ],
                ),
                AppGap.hLG,
                AppTextFormField(
                  hintText: AppStrings.hintEmail,
                ),

                Padding(
                  padding: EdgeInsets.only(
                    bottom: 72,
                    top: AppSpacing.xl,
                  ),
                  child: Column(
                    mainAxisSize: .min,
                    children: [
                      AppButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('passwordView/');
                        },
                        label: AppStrings.next,
                        width: double.infinity,
                      ),
                      AppGap.hMD,
                      AppTextButton(
                        label: AppStrings.cancel,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            left: -120,
            top:
                -171, // Note: Usually you want top/bottom instead of right for absolute clipping
            child: Transform.rotate(
              angle:
                  -158 *
                  3.141592653589793 /
                  180, // Math.pi / 180 to convert degrees to radians!
              child: SvgPicture.asset(
                AppAssets.bubble3,
                height: 444,
                width: 373,
              ),
            ),
          ),

          Positioned(
            left: -120,
            // Note: Usually you want top/bottom instead of right for absolute clipping
            top: -171,
            child: SvgPicture.asset(
              AppAssets.bubble2,
              height: 350,
              width: 250,
            ),
          ),

          Positioned(
            right: -50,
            // Note: Usually you want top/bottom instead of right for absolute clipping
            top: 281,
            child: Transform.rotate(
              angle: 156 * 3.141592653589793 / 180,
              child: SvgPicture.asset(
                AppAssets.bubble2,
                height: 151,
                width: 137,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
