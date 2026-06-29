import 'package:flutter/material.dart';

/*shared widget */
import 'package:shoppe/core/theme/app_color_palette.dart';

class AppPageViewBuilder extends StatefulWidget {
  final List<Widget> widget;
  const AppPageViewBuilder({
    super.key,
    required this.widget,
  });

  @override
  State<AppPageViewBuilder> createState() => _AppPageViewBuilderState();
}

class _AppPageViewBuilderState extends State<AppPageViewBuilder> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    return Column(
      children: [
        SizedBox(
          height: 140,
          child: PageView.builder(
            itemCount: widget.widget.length,
            onPageChanged: (value) {
              setState(() {
                _currentPage = value;
              });
            },
            itemBuilder: (context, index) {
              return widget.widget[index];
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: .center,
          mainAxisAlignment: .center,
          children: List.generate(
            widget.widget.length,
            (index) {
              return Container(
                height: 10,
                width: index == _currentPage ? 40 : 10,
                margin: EdgeInsets.only(
                  right: index == widget.widget.length - 1 ? 0 : 10,
                ),
                decoration: BoxDecoration(
                  color: index == _currentPage
                      ? palette.primary
                      : palette.primary.withAlpha(100),
                  borderRadius: BorderRadius.circular(
                    5,
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
