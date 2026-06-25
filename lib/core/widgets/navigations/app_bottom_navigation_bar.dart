import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_assets.dart';
import 'package:shoppe/core/constants/app_spacing.dart';

/*theme */
import 'package:shoppe/core/theme/app_color_palette.dart';
import 'package:shoppe/core/theme/app_elevation_theme.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  final List<String> _appAssets = [
    AppAssets.home,
    AppAssets.heartOutlined,
    AppAssets.categories,
    AppAssets.cart,
    AppAssets.profile,
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    final elevation = Theme.of(context).extension<AppElevationTheme>()!;

    return Container(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 48,
        top: 26,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        boxShadow: [
          elevation.bottomNavigationBarShadow,
        ],
        color: palette.white,
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        crossAxisAlignment: .start,
        children: List.generate(
          _appAssets.length,
          (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Column(
                mainAxisSize: .min,
                children: [
                  Image.asset(
                    _appAssets[index],
                    height: 24,
                    width: 24,
                    color: index == currentIndex
                        ? palette.black
                        : palette.primary,
                  ),
                  if (index == currentIndex) ...[
                    AppGap.hXS,
                    SizedBox(
                      width: 16,
                      child: Divider(
                        thickness: 3,
                        color: palette.black,
                        radius: BorderRadius.circular(3),
                      ),
                    ),
                  ],
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
