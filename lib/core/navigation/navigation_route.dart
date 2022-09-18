import 'package:flutter/material.dart';
import '../../ui/screens/deposit.dart';
import '../../ui/screens/home.dart';
import 'navigation_constants.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;
  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.homeView:
        return normalNavigate(const HomePage(), const RouteSettings(name: NavigationConstants.homeView));
      case NavigationConstants.depositView:
        return normalNavigate(
            const DepositPage(), RouteSettings(name: NavigationConstants.depositView, arguments: args.arguments));
      default:
        return normalNavigate(const HomePage(), const RouteSettings(name: NavigationConstants.homeView));
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
