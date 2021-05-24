import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static CupertinoThemeData iosThemeData = CupertinoThemeData(
    textTheme: cupertinoTextThemeData,
    brightness: Brightness.light,
  );

  static CupertinoThemeData iosThemeDataDark = CupertinoThemeData(
    textTheme: cupertinoTextThemeData,
    brightness: Brightness.dark,
  );

  static ThemeData themeData = ThemeData(
    backgroundColor: Colors.white,
    applyElevationOverlayColor: true,
    hintColor: Colors.black54,
    textTheme: textTheme,
    fontFamily: 'CodecPro',
    brightness: Brightness.light,
  );

  static ThemeData themeDataDark = ThemeData(
    backgroundColor: Colors.black,
    textTheme: textThemeDark,
    fontFamily: 'CodecPro',
    brightness: Brightness.dark,
  );

  static TextTheme textThemeDark = TextTheme(
    subtitle1: TextStyle(fontSize: 33),
    subtitle2: TextStyle(fontSize: 31),
    headline1: TextStyle(fontSize: 29),
    headline2: TextStyle(fontSize: 27),
    headline3: TextStyle(fontSize: 25),
    headline4: TextStyle(fontSize: 23),
    headline5: TextStyle(fontSize: 21),
    headline6: TextStyle(fontSize: 19),
    bodyText1: TextStyle(fontSize: 17),
    bodyText2: TextStyle(fontSize: 15),
    caption: TextStyle(fontSize: 10),
    button: TextStyle(fontSize: 14),
  ).apply(displayColor: Colors.white);

  static TextTheme textTheme = TextTheme(
          subtitle1: TextStyle(fontSize: 33),
          subtitle2: TextStyle(fontSize: 31),
          headline1: TextStyle(fontSize: 29),
          headline2: TextStyle(fontSize: 27),
          headline3: TextStyle(fontSize: 25),
          headline4: TextStyle(fontSize: 23),
          headline5: TextStyle(fontSize: 21),
          headline6: TextStyle(fontSize: 19),
          bodyText1: TextStyle(fontSize: 17),
          bodyText2: TextStyle(fontSize: 15),
          caption: TextStyle(
            fontSize: 10,
          ),
          button: TextStyle(fontSize: 14))
      .apply(displayColor: Colors.black);

  static CupertinoTextThemeData cupertinoTextThemeData = CupertinoTextThemeData(
      textStyle:
          TextStyle(fontSize: 15, fontFamily: 'CodecPro', color: Colors.black),
      actionTextStyle: TextStyle(fontSize: 20, fontFamily: 'CodecPro'),
      navTitleTextStyle: TextStyle(fontSize: 20, fontFamily: 'CodecPro'),
      navActionTextStyle: TextStyle(fontSize: 20, fontFamily: 'CodecPro'),
      navLargeTitleTextStyle: TextStyle(fontSize: 20, fontFamily: 'CodecPro'),
      tabLabelTextStyle: TextStyle(fontSize: 20, fontFamily: 'CodecPro'),
      dateTimePickerTextStyle: TextStyle(fontSize: 20, fontFamily: 'CodecPro'),
      pickerTextStyle: TextStyle(fontSize: 20, fontFamily: 'CodecPro'));
}
