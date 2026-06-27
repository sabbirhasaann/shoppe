import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

/*widgets */
import 'package:shoppe/core/widgets/buttons/app_icon_button.dart';

class Announcement extends StatelessWidget {
  const Announcement({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: palette.backgroundGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .start,
          children: [
            Text(
              AppStrings.announcement,
              style: AppTextStyle.ralewayBold14px,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    AppStrings.announcementInfo,
                    style: AppTextStyle.nunitoSansRegular10px,
                  ),
                ),
                AppGap.wLG,
                AppIconButton(
                  onPressed: () {},
                  iconPath: AppAssets.arrowRight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
