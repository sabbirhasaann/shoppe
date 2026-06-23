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
          onPressed: () {},
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
