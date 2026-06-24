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
import 'package:shoppe/core/widgets/buttons/app_radio_button.dart';

class RecoveryOptions extends StatefulWidget {
  const RecoveryOptions({super.key});

  @override
  State<RecoveryOptions> createState() => _RecoveryOptionsState();
}

class _RecoveryOptionsState extends State<RecoveryOptions> {
  bool _select = false;
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
          AppStrings.instructionOptions,
          style: AppTextStyle.nunitoSansLight19px,
          textAlign: TextAlign.center,
        ),
        AppGap.hMD,

        AppRadioButton(
          label: AppStrings.sms,
          onTap: () {
            setState(() {
              _select = !_select;
            });
          },
          selected: _select,
          foreground: palette.primary,
          background: palette.primary.withValues(
            alpha: 0.10,
          ),
        ),
        AppGap.hMD,
        AppRadioButton(
          label: AppStrings.email,
          onTap: () {
            setState(() {
              _select = !_select;
            });
          },
          selected: _select,
          foreground: palette.pink200,
          background: palette.pink100,
        ),

        const Spacer(),
        AppButton(
          onPressed: () {},
          width: double.infinity,
          label: AppStrings.next,
        ),
        AppGap.hMD,

        AppTextButton(
          onPressed: () {},
          label: AppStrings.cancel,
        ),
      ],
    );
  }
}
