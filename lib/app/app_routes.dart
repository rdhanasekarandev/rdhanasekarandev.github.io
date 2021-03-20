import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const String APP_HOME = '/home';
  static const String APP_CREATE = '/create';
  static const String APP_LOGIN = '/login';
  static const String APP_NAME_FIELDS = '/name_field';

  Route getRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      default:
        {
          return CupertinoPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => Container(),
            fullscreenDialog: true,
          );
        }
    }
  }

  getWidget(BuildContext context, String app_route_name) {
    switch (app_route_name) {
      default:
        {
          return Container();
        }
    }
  }
}
