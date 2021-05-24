import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mixnote/services/app_navigator.dart';
import 'package:mixnote/services/app_service.dart';
import 'package:mixnote/utils/app_router.dart';
import 'package:mixnote/utils/service_provider.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mixnote/views/splash_screen_view.dart';

void main() {
  injectServiceProvider();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppNavigator appNavigator = serviceProvider<AppNavigator>();
  final AppServices appServices = serviceProvider<AppServices>();

  final title = "Kauye Hub";
  final localizations = [
   // AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  final List<Locale> supportedLocales = [
    const Locale('en'), // English, no country code
    const Locale('en', 'GB'), // English British
    const Locale('es'), // Spanish, no country code
  ];

  late var theme;

  @override
  void initState() {
    super.initState();
    theme = appServices.themeProvider.lightTheme;
    appServices.themeProvider.themeProviderStream.listen((themeMode) {
      setState(() {
        theme = themeMode == ThemeMode.dark
            ? appServices.themeProvider.darkTheme
            : appServices.themeProvider.lightTheme;
      });
    });

    appServices.themeProvider.isDark.then(
      (_bool) => {
        setState(
          () {
            theme = _bool
                ? appServices.themeProvider.darkTheme
                : appServices.themeProvider.lightTheme;
          },
        )
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        title: title,
        theme: theme,
        home: SplashScreenView(),
        navigatorKey: appNavigator.navigatorKey,
        onGenerateRoute: AppRouter.onGenerateRoutes,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: localizations,
        supportedLocales: supportedLocales,
      );
    }

    return MaterialApp(
      title: title,
      theme: theme,
      //home: SplashscreenView(),
      navigatorKey: appNavigator.navigatorKey,
      onGenerateRoute: AppRouter.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: localizations,
      supportedLocales: supportedLocales,
    );
  }
}
