import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_spacing.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

class AppRadioButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool selected;
  final Color foreground;
  final Color background;

  const AppRadioButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.selected,
    required this.foreground,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    return Container(
      width: 199,
      height: 40,
      padding: AppPadSymmetric.hMD,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: background,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          const SizedBox(
            width: 22,
          ),
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              label,
              style: AppTextStyle.ralewayBold15px.copyWith(
                color: foreground,
              ),
            ),
          ),
          AppGap.wMD,
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 3,
                  color: palette.white,
                ),
              ),
              child: CircleAvatar(
                radius: 11,
                backgroundColor: foreground,
                child: selected
                    ? SizedBox(
                        width: 8,
                        height: 8,
                        child: Image.asset(
                          AppAssets.iconFeatherCheck,
                        ),
                      )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
