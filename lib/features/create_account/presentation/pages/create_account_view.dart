import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';

/*constants */
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

/* widgets */
import 'package:shoppe/core/widgets/inputs/app_text_form_field.dart';
import 'package:shoppe/core/widgets/buttons/app_button.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    return Scaffold(
      backgroundColor: palette.white,
      body: Stack(
        children: [
          Positioned(
            top: -150,
            left: -150,
            child: Transform.rotate(
              angle: -145,
              child: SvgPicture.asset(
                AppAssets.bubble3,
              ),
            ),
          ),
          Positioned(
            top: 100,
            right: -140,
            child: SvgPicture.asset(
              AppAssets.bubble2,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .start,
              children: [
                Text(
                  AppStrings.creatAccount,
                  style: AppTextStyle.ralewayBold50px,
                ),
                const SizedBox(
                  height: 54,
                ),
                DottedBorder(
                  options: CircularDottedBorderOptions(
                    color: palette.primary,
                    strokeWidth: 1,
                    dashPattern: [6, 3],
                  ),
                  child: SizedBox(
                    width: 90,
                    height: 90,
                    child: SizedBox(
                      height: 27.83,
                      width: 34,
                      child: Image.asset(
                        AppAssets.camera,
                      ),
                    ),
                  ),
                ),

                AppGap.hXL,

                AppTextFormField(
                  hintText: AppStrings.hintEmail,
                ),
                AppGap.hSM,
                AppTextFormField(
                  hintText: AppStrings.hintPass,
                ),
                AppGap.hSM,

                AppTextFormField(
                  hintText: AppStrings.hintPhone,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 72.0,
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisSize: .min,
            children: [
              AppButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('loginView/');
                },
                label: AppStrings.done,
                width: double.infinity,
                variant: ButtonVariant.primary,
              ),

              AppGap.hLG,
              TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.cancel,
                  style: AppTextStyle.nunitoSansLight15px.copyWith(
                    color: palette.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
