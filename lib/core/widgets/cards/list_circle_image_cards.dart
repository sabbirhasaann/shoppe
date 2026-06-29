import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*shared widget*/
import 'package:shoppe/core/widgets/cards/circle_image_card.dart';

class ListCircleImageCards extends StatelessWidget {
  final String heading;
  final List<String> assets;
  const ListCircleImageCards({
    super.key,
    required this.heading,
    required this.assets,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          heading,
          style: AppTextStyle.ralewayBold21px,
        ),
        AppGap.hSM,
        Row(
          mainAxisAlignment: .spaceBetween,
          children: List.generate(assets.length, (index) {
            return CircleImageCard(
              height: 60,
              width: 60,
              asset: assets[index],
            );
          }),
        ),
      ],
    );
  }
}
