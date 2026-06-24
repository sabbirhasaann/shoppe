import 'package:flutter/material.dart';

/* routes*/
import './app_routes.dart';

/* pages*/
import 'package:shoppe/features/start/presentation/pages/start_view.dart';
import 'package:shoppe/features/create_account/presentation/pages/create_account_view.dart';
import 'package:shoppe/features/login/presentation/pages/login_view.dart';
import 'package:shoppe/features/password/presentation/pages/password_view.dart';
import 'package:shoppe/features/password/presentation/pages/password_recovery.dart';
import 'package:shoppe/features/onboarding/presentation/pages/onboard_hello.dart';
import 'package:shoppe/features/onboarding/presentation/pages/onboard_ready.dart';

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
      case AppRoutes.passwordView:
        return MaterialPageRoute(
          builder: (ctx) {
            return const PasswordView();
          },
        );

      case AppRoutes.passwordRecoveryView:
        return MaterialPageRoute(
          builder: (ctx) {
            return const PasswordRecovery();
          },
        );
      case AppRoutes.onboardHello:
        return MaterialPageRoute(
          builder: (ctx) {
            return const OnboardHello();
          },
        );
      case AppRoutes.onboardReadyView:
        return MaterialPageRoute(
          builder: (ctx) {
            return const OnboardReady();
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
