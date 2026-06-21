import 'package:flutter/material.dart';

/*widgets */
import 'package:shoppe/core/theme/app_theme.dart';

/* router*/
import 'package:shoppe/core/router/router_generator.dart';

/*constants */
import 'package:shoppe/core/constants/app_strings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.title,
      theme: lightTheme,
      darkTheme: darkTheme,
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
