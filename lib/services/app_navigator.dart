import 'package:flutter/material.dart';

class AppNavigator {
  GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  Future<dynamic> navigateTo(String routeName, {Object? arguments}) async {
    await _navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> replace(String routeName, {Object? arguments}) async {
    await _navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  void pop() async {
    if (_navigatorKey.currentState!.canPop()) {
      _navigatorKey.currentState!.pop();
    }
  }
}
