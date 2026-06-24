import 'package:flutter/material.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

/*constants */
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_spacing.dart';
import 'package:shoppe/core/constants/app_assets.dart';

/*widgets */
import 'package:shoppe/core/widgets/buttons/app_button.dart';
import 'package:shoppe/core/widgets/buttons/app_text_button.dart';

class RecoveryVerification extends StatelessWidget {
  const RecoveryVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    void _openAlert() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              decoration: BoxDecoration(
                shape: .rectangle,
                borderRadius: BorderRadius.circular(19),
              ),
              child: Column(
                mainAxisSize: .min,
                children: [
                  Transform.translate(
                    offset: Offset(0, -50),
                    child: Stack(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: .circle,
                            color: palette.white,
                          ),
                          child: Center(
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: .circle,
                                color: palette.pink100,
                              ),
                              child: Center(
                                child: Container(
                                  width: 22,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    shape: .circle,
                                    color: palette.pink500,
                                    border: Border.all(
                                      width: 3,
                                      color: palette.white,
                                    ),
                                  ),
                                  child: Image.asset(
                                    AppAssets.exclamation,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Text(
                    AppStrings.alertInfo,
                    style: AppTextStyle.ralewayMedium18px,
                    textAlign: .center,
                  ),
                  AppGap.hLG,
                  AppButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: AppStrings.okay,
                    width: 201,
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Column(
      mainAxisAlignment: .center,

      children: [
        CircleAvatar(
          maxRadius: 46,
          child: SizedBox(
            height: 91,
            width: 91,
            child: Image.asset(
              AppAssets.artist1,
            ),
          ),
        ),

        AppGap.hMD,

        Text(
          AppStrings.passwordRecovery,
          style: AppTextStyle.ralewayBold21px,
        ),

        AppGap.hSM,

        Text(
          AppStrings.instructionVerification,
          style: AppTextStyle.nunitoSansLight19px,
          textAlign: TextAlign.center,
        ),
        AppGap.hMD,

        Text(
          AppStrings.phoneNumber,
          style: AppTextStyle.nunitoSansBold16px,
        ),
        AppGap.hLG,

        Row(
          mainAxisSize: .min,
          mainAxisAlignment: .center,
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: palette.backgroundGrey,
              ),
            ),
            AppGap.wMD,
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: palette.backgroundGrey,
              ),
            ),
            AppGap.wMD,
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: palette.backgroundGrey,
              ),
            ),
            AppGap.wMD,
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: palette.backgroundGrey,
              ),
            ),
          ],
        ),
        const Spacer(),
        AppButton(
          onPressed: () {
            _openAlert();
          },
          width: double.infinity,
          label: AppStrings.sendAgain,
        ),
        AppGap.hMD,

        AppTextButton(
          label: AppStrings.cancel,
        ),
      ],
    );
  }
}
