import 'package:flutter/material.dart';

/*constants*/
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';
import 'package:shoppe/core/constants/app_assets.dart';

/*widgets */
import 'package:shoppe/core/widgets/buttons/app_button.dart';
import 'package:shoppe/core/widgets/buttons/app_text_button.dart';
import 'package:shoppe/core/widgets/inputs/app_text_form_field.dart';

class SetupPassword extends StatelessWidget {
  const SetupPassword({super.key});
  @override
  Widget build(BuildContext context) {
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
          AppStrings.setNewPassword,
          style: AppTextStyle.ralewayBold21px,
        ),

        AppGap.hSM,

        Text(
          AppStrings.setPassInstruction,
          style: AppTextStyle.nunitoSansLight19px,
          textAlign: TextAlign.center,
        ),
        AppGap.hLG,

        AppTextFormField(
          hintText: AppStrings.newPassword,
        ),
        AppGap.hSM,
        AppTextFormField(
          hintText: AppStrings.repeatPassword,
        ),

        const Spacer(),
        AppButton(
          onPressed: () {},
          width: double.infinity,
          label: AppStrings.save,
        ),
        AppGap.hMD,

        AppTextButton(
          label: AppStrings.cancel,
        ),
      ],
    );
  }
}
