import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mixnote/utils/app_theme.dart';
import 'package:mixnote/utils/foundation.dart';

abstract class PlatformStyles {
  static TextStyle? get subtitle1 => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle.apply(fontSizeFactor: 1.5)
      : AppTheme.textTheme.subtitle1;
  static TextStyle? get subtitle2 => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle.apply(fontSizeFactor: 1.45)
      : AppTheme.textTheme.subtitle1;

  static TextStyle? get headline1 => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle.apply(fontSizeFactor: 1.4)
      : AppTheme.textTheme.headline1;

  static TextStyle? get headline2 => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle.apply(fontSizeFactor: 1.34)
      : AppTheme.textTheme.headline2;
  static TextStyle? get headline3 => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle.apply(fontSizeFactor: 1.3)
      : AppTheme.textTheme.headline3;

  static TextStyle? get headline4 => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle.apply(fontSizeFactor: 1.25)
      : AppTheme.textTheme.headline4;

  static TextStyle? get headline5 => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle.apply(fontSizeFactor: 1.2)
      : AppTheme.textTheme.headline5;

  static TextStyle? get headline6 => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle.apply(fontSizeFactor: 1.1)
      : AppTheme.textTheme.headline6;

  static TextStyle? get bodyText1 => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle
      : AppTheme.textTheme.bodyText1;

  static TextStyle? get bodyText2 => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle.apply(fontSizeFactor: .9)
      : AppTheme.textTheme.bodyText2;

  static TextStyle? get button => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle.apply(fontSizeFactor: 1.05)
      : AppTheme.textTheme.button;

  static TextStyle? get caption => isIOS
      ? AppTheme.cupertinoTextThemeData.textStyle.apply(fontSizeFactor: .8, color: Colors.black54)
      : AppTheme.textTheme.caption!.apply(color: Colors.black38);
}
