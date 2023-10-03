import 'package:advance_flutter_mvvc/presentation/forget_password/forget_password.dart';
import 'package:advance_flutter_mvvc/presentation/login/login.dart';
import 'package:advance_flutter_mvvc/presentation/main/main_view.dart';
import 'package:advance_flutter_mvvc/presentation/onboarding/onboarding.dart';
import 'package:advance_flutter_mvvc/presentation/register/register.dart';
import 'package:advance_flutter_mvvc/presentation/resources/strings_manager.dart';
import 'package:advance_flutter_mvvc/presentation/splash/splash.dart';
import 'package:advance_flutter_mvvc/presentation/store_details/store_details.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardRoute = "/onbaording";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());

      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());

      case Routes.onBoardRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());

      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());

      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());

      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());

      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
