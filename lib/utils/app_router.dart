import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mixnote/constants/app_routes.dart';
import 'package:mixnote/utils/foundation.dart';
import 'package:mixnote/views/home_view.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoutes(RouteSettings routeSettings) {
    late Widget page;
    switch (routeSettings.name) {
      case routeHome:
        page = HomeView();
        break;
    }

    if (isIOS) {
      return CupertinoPageRoute(builder: (context) => page);
    }
    return MaterialPageRoute(builder: (context) => page);
  }
}
