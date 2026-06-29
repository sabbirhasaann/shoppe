import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_assets.dart';

/* shared widgets */
import 'package:shoppe/core/widgets/cards/list_circle_image_cards.dart';

class TopProducts extends StatelessWidget {
  const TopProducts({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> _appAssets = [
      AppAssets.bag3,
      AppAssets.watch1,
      AppAssets.hoodies1,
      AppAssets.shoes1,
      AppAssets.lingerie3,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListCircleImageCards(
        heading: AppStrings.topProduct,
        assets: _appAssets,
      ),
    );
  }
}
