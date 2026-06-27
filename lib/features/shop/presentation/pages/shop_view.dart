import 'package:flutter/material.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.shop,
        ),
      ),
    );
  }
}
