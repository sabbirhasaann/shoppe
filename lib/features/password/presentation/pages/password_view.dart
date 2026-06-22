import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

class PasswordView extends StatelessWidget {
  const PasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    return Scaffold(
      backgroundColor: palette.white,
      body: Center(
        child: Text(
          AppStrings.password,
        ),
      ),
    );
  }
}
