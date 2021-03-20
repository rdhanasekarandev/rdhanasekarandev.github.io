import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:karkai_web/app/app_localizations.dart';
import 'package:karkai_web/ui_bloc/language/lang_bloc.dart';
import 'package:karkai_web/ui_bloc/language/lang_state.dart';
import 'package:karkai_web/resources/app_style.dart';
import 'package:karkai_web/views/launch.dart';
import 'package:page_transition/page_transition.dart';

import 'app_routes.dart';

class App extends StatelessWidget {
  static final App _instance = App._internal();
  App._internal();
  factory App() {
    return _instance;
  }

  @override
  Widget build(BuildContext context) {
    return getMaterialApp(
        widget: Lanuch(), title: 'Launch', buildContext: context);
  }

  AppRoutes getAppRoutes() {
    return AppRoutes();
  }

  Widget getMaterialApp(
      {@required Widget widget, String title, BuildContext buildContext}) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, languageState) {
      return MaterialApp(
        title: title,
        debugShowCheckedModeBanner: false,
        home: widget,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          AppLocalizations.delegate
        ],
        locale: languageState.locale,
        theme: AppStyle.lightTheme(),
        supportedLocales: [Locale('en', 'US'), Locale('ta', 'IN')],
        onGenerateRoute: getAppRoutes().getRoutes,
      );
    });
  }

  Future<dynamic> setNavigation(
      BuildContext context, String app_route_name) async {
    Future.delayed(const Duration(milliseconds: 100), () async {
      final info = await Navigator.push(
          context,
          PageTransition(
              child: getAppRoutes().getWidget(context, app_route_name),
              type: PageTransitionType.fade,
              settings: RouteSettings(name: app_route_name),
              duration: Duration(milliseconds: 215)));

      return info;
    });
  }

  void setBackNavigation(BuildContext context) {
    Navigator.pop(context, "inefr");
  }

  void closeApp() {
    if (Platform.isAndroid)
      SystemNavigator.pop();
    else
      exit(0);
  }
}
