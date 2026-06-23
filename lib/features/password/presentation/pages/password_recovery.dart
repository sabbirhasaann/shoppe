import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

/*local widgets */
import 'package:shoppe/features/password/presentation/widgets/recovery_verification.dart';
// import 'package:shoppe/features/password/presentation/widgets/recovery_options.dart';
// import 'package:shoppe/features/password/presentation/widgets/setup_password.dart';

/*constants */
import 'package:shoppe/core/constants/app_assets.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;

    return Scaffold(
      backgroundColor: palette.white,
      body: Stack(
        children: [
          Positioned(
            left: 140,
            top: -200,
            child: Transform.rotate(
              angle: -105 * 3.1416 / 180,
              child: SvgPicture.asset(
                AppAssets.bubble3,
                height: 442,
                width: 402,
              ),
            ),
          ),
          Positioned(
            left: 150,
            top: -300,
            child: Transform.rotate(
              angle: 105 * 3.1416 / 180,
              child: SvgPicture.asset(
                AppAssets.bubble2,
                height: 442,
                width: 373,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              bottom: 72.0,
              left: 20,
              right: 20,
              top: 120,
            ),
            child: RecoveryVerification(),
            // child: RecoveryOptions(),
            // child: SetupPassword(),

          ),
        ],
      ),
    );
  }
}
