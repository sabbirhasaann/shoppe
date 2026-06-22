import 'package:flutter/material.dart';

/* constants*/
import 'package:shoppe/core/constants/app_text_styles.dart';

/* theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

class AppTextButton extends StatelessWidget {
  final String label;

  const AppTextButton({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    return TextButton(
      onPressed: () {},
      child: Text(
        label,
        style: AppTextStyle.nunitoSansLight15px.copyWith(
          color: palette.black,
        ),
      ),
    );
  }
}
