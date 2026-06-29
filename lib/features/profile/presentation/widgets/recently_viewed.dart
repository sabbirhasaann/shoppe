import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_assets.dart';

/*theme */
import 'package:shoppe/core/widgets/cards/list_circle_image_cards.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> _appAssets = [
      AppAssets.avatar2,
      AppAssets.avatar3,
      AppAssets.avatar4,
      AppAssets.avatar5,
      AppAssets.avatar6,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListCircleImageCards(
        heading: AppStrings.recentlyViewed,
        assets: _appAssets,
      ),
    );
  }
}
