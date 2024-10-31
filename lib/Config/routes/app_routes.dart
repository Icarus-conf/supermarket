import 'package:flutter/material.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/Widgets/sign_in_view/sign_in_view.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/Widgets/sign_up_view/sign_up_view.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/auth_view.dart';
import 'package:supermarket/Features/Home/Presentation/Widgets/bottom_navbar.dart';
import 'package:supermarket/Features/Home/Presentation/Widgets/cart_view.dart';
import 'package:supermarket/Features/OnBoarding/Presentation/Views/on_boarding_view.dart';

class RoutesNames {
  static const String onBoardingView = '/';
  static const String authView = 'authView';
  static const String signInView = 'signInView';
  static const String signUpView = 'signUpView';
  static const String homeView = 'homeView';
  static const String cartView = 'cartView';
  static const String bottomNavBarView = 'bottomNavBarView';
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

      case RoutesNames.cartView:
        return MaterialPageRoute(
          builder: (context) => const CartView(),
        );

      case RoutesNames.bottomNavBarView:
        return MaterialPageRoute(
          builder: (context) => const CustomBottomNavBar(),
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
