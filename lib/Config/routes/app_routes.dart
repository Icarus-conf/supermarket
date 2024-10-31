import 'package:flutter/material.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/Widgets/sign_in_view/sign_in_view.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/Widgets/sign_up_view/sign_up_view.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/auth_view.dart';
import 'package:supermarket/Features/OnBoarding/Presentation/Views/on_boarding_view.dart';

class RoutesNames {
  static const String onBoardingView = '/';
  static const String authView = 'authView';
  static const String signInView = 'signInView';
  static const String signUpView = 'signUpView';
  static const String homeView = 'homeView';
}

class AppRoutes {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.onBoardingView:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        );

      case RoutesNames.authView:
        return MaterialPageRoute(
          builder: (context) => const AuthView(),
        );

      case RoutesNames.signInView:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
        );

      case RoutesNames.signUpView:
        return MaterialPageRoute(
          builder: (context) => const SignUpView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoute(),
        );
    }
  }

  static Widget unDefineRoute() {
    return const Scaffold(
      body: Center(
        child: Text('Route not found!'),
      ),
    );
  }
}
