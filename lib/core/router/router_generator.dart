import 'package:flutter/material.dart';

/* routes*/
import './app_routes.dart';

/* pages*/
import 'package:shoppe/features/start/presentation/pages/start_view.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initial:
        return MaterialPageRoute(
          builder: (ctx) {
            return const StartView();
          },
        );
      default:
        return _onError();
    }
  }

  static Route<dynamic> _onError() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          body: Center(
            child: Text('Route not found!'),
          ),
        );
      },
    );
  }
}
