import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';

/* shared widget*/
import 'package:shoppe/core/widgets/cards/item_card.dart';

class JustForYou extends StatelessWidget {
  const JustForYou({super.key});
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;

    final _justForYou = [
      AppAssets.product1,
      AppAssets.product9,
      AppAssets.product10,
      AppAssets.avatar5,
      AppAssets.product13,
      AppAssets.product11,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                AppStrings.justForYou,
                style: AppTextStyle.ralewayBold21px,
              ),
              AppGap.wXS,
              Transform.translate(
                offset: Offset(0, -4),
                child: Image.asset(
                  AppAssets.starFull,
                  color: palette.primary,
                ),
              ),
            ],
          ),

          AppGap.hSM,

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              childAspectRatio: 0.68,
            ),
            itemCount: _justForYou.length,
            itemBuilder: (context, index) {
              final item = _justForYou[index];

              return ItemCard(
                imagePath: item,
                width: 155,
                height: 171,
              );
            },
          ),
        ],
      ),
    );
  }
}
