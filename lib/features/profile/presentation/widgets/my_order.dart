import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;

    final List<String> _orders = [
      AppStrings.toPay,
      AppStrings.toReceieve,
      AppStrings.toReview,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            AppStrings.myOrder,
            style: AppTextStyle.ralewayBold21px,
          ),
          AppGap.hMD,
          Row(
            mainAxisAlignment: .spaceBetween,
            children: List.generate(_orders.length, (index) {
              return Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.sm,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(18),
                      color: palette.lightPeriwinkle,
                    ),
                    child: Text(
                      _orders[index],
                      style: AppTextStyle.ralewayMedium16px.copyWith(
                        color: palette.primary,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: palette.white,
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: palette.green,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
