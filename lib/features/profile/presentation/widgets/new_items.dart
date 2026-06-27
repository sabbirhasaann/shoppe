import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*widgets */
import 'package:shoppe/core/widgets/buttons/app_icon_button.dart';
import 'package:shoppe/core/widgets/cards/item_card.dart';

class NewItems extends StatelessWidget {
  const NewItems({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> _newItems = [
      AppAssets.product1,
      AppAssets.product2,
      AppAssets.product3,
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(AppStrings.newItem, style: AppTextStyle.ralewayBold21px),
              const Spacer(),
              Text(
                AppStrings.seeAll,
                style: AppTextStyle.ralewayBold15px,
              ),
              AppGap.wMD,
              AppIconButton(
                onPressed: () {},
                iconPath: AppAssets.arrowRight,
              ),
            ],
          ),
        ),

        AppGap.hSM,

        SizedBox(
          height: 204,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _newItems.length,
            itemBuilder: (context, index) {
              return Container(
                width: 130,
                margin: EdgeInsets.only(
                  left: index == 0 ? 20 : 0,
                ),
                child: ItemCard(
                  imagePath: _newItems[index],
                  height: 130,
                  width: 130,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
