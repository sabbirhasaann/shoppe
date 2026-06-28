import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';
import 'package:shoppe/core/constants/app_assets.dart';

/*shared widget*/
import 'package:shoppe/core/widgets/inputs/app_text_form_field.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    return Scaffold(
      backgroundColor: palette.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 40,
          ),
          child: Row(
            children: [
              Text(
                AppStrings.shop,
                style: AppTextStyle.ralewayBold28px,
              ),

              AppGap.wLG,

              Expanded(
                child: AppTextFormField(
                  hintText: AppStrings.search,
                  hintStyle: AppTextStyle.ralewayMedium16px,
                  suffixAsset: AppAssets.camera,
                  suffixIconColor: palette.primary,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          AppStrings.shop,
        ),
      ),
    );
  }
}
