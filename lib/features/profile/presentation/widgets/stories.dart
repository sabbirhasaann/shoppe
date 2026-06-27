import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/constants/app_spacing.dart';
import 'package:shoppe/core/constants/app_assets.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> _stories = [
      AppAssets.story1,
      AppAssets.story2,
      AppAssets.story3,
      AppAssets.story4,
    ];

    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            AppStrings.stories,
            style: AppTextStyle.ralewayBold21px,
          ),
        ),
        AppGap.hSM,
        SizedBox(
          height: 175,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _stories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 20 : 0,
                  right: AppSpacing.xs,
                ),
                child: SizedBox(
                  height: 175,
                  width: 104,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      _stories[index],
                      fit: BoxFit.cover,
                      alignment: .center,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
