import 'package:flutter/material.dart';

/* routes*/
import './app_routes.dart';

/* pages*/
import 'package:shoppe/features/start/presentation/pages/start_view.dart';
import 'package:shoppe/features/create_account/presentation/pages/create_account_view.dart';
import 'package:shoppe/features/login/presentation/pages/login_view.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initial:
        return MaterialPageRoute(
          builder: (ctx) {
            return const StartView();
          },
        );
      case AppRoutes.createAccountView:
        return MaterialPageRoute(
          builder: (ctx) {
            return const CreateAccountView();
          },
        );
      case AppRoutes.loginView:
        return MaterialPageRoute(
          builder: (ctx) {
            return const LoginView();
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
