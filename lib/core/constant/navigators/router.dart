import 'package:booklab/core/core.dart';
import 'package:booklab/features/features.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.splash:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const Splash(),
      );

    case RouteName.login:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const LoginScreen(),
      );

    case RouteName.signup:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SignupScreen(),
      );

    case RouteName.appTabView:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const AppTabView(),
      );

    case RouteName.homeView:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const HomeView(),
      );

    case RouteName.descriptionView:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const BookDetails(),
      );

    case RouteName.onlineStore:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const OnlineStore(),
      );

    case RouteName.customStore:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const CustomStore(),
      );

    default:
      return MaterialPageRoute<dynamic>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

Route<dynamic> _getPageRoute({
  required String routeName,
  required Widget viewToShow,
}) {
  return MaterialPageRoute(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow,
  );
}
