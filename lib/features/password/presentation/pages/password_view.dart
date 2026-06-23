import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*constants */
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

/*widgets */
import 'package:shoppe/core/widgets/inputs/app_text_form_field.dart';
import 'package:shoppe/core/widgets/buttons/app_icon_button.dart';

class PasswordView extends StatelessWidget {
  const PasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    return Scaffold(
      backgroundColor: palette.white,
      body: Stack(
        children: [
          Positioned(
            left: -120,
            top: -171,
            child: Transform.rotate(
              angle: -158 * 3.141592653589793 / 180,
              child: SvgPicture.asset(
                AppAssets.bubble3,
                height: 444,
                width: 373,
              ),
            ),
          ),

          Positioned(
            left: -120,
            top: -171,
            child: SvgPicture.asset(
              AppAssets.bubble2,
              height: 350,
              width: 250,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 110,
              bottom: 72,
              left: 20,
              right: 20,
            ),
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Container(
                  height: 91,
                  width: 91,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: palette.pink500,
                  ),
                  child: SvgPicture.asset(
                    AppAssets.artist,
                  ),
                ),

                AppGap.hLG,
                Text(
                  AppStrings.greetName,
                  style: AppTextStyle.ralewayBold28px,
                ),
                AppGap.hLG,
                Text(
                  AppStrings.typePassowrd,
                  style: AppTextStyle.nunitoSansLight19px,
                ),
                AppGap.hMD,
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    SizedBox(
                      width: 60,
                      child: AppTextFormField(),
                    ),
                    AppGap.wSM,
                    SizedBox(
                      width: 60,
                      child: AppTextFormField(),
                    ),
                    AppGap.wSM,
                    SizedBox(
                      width: 60,
                      child: AppTextFormField(),
                    ),
                    AppGap.wSM,
                    SizedBox(
                      width: 60,
                      child: AppTextFormField(),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      AppStrings.notYou,
                      style: AppTextStyle.nunitoSansLight15px,
                    ),
                    AppGap.wMD,
                    AppIconButton(
                      onPressed: () {
                        Navigator.of(
                          context,
                        ).pushNamed('passwordRecoveryView/');
                      },
                      iconPath: AppAssets.arrowRight,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
