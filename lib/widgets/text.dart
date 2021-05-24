import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mixnote/widgets/platform/platform_styles.dart';

abstract class KText {
  static Text subtitle1(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.subtitle1!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.subtitle1!.fontSize!)),
      );

  static Text subtitle2(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.subtitle2!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.subtitle2!.fontSize!)),
      );

  static Text headline1(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.headline1!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.headline3!.fontSize!)),
      );

  static Text headline2(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.headline2!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.headline2!.fontSize!)),
      );

  static Text headline3(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.headline3!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.headline3!.fontSize!)),
      );

  static Text headline4(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.headline4!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.headline4!.fontSize!)),
      );

  static Text headline5(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.headline5!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.headline5!.fontSize!)),
      );

  static Text headline6(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.headline6!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.headline6!.fontSize!)),
      );

  static Text bodyText1(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.bodyText1!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.bodyText1!.fontSize!)),
      );

  static Text bodyText2(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.bodyText2!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.bodyText2!.fontSize!)),
      );

  static Text button(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.button!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.button!.fontSize!)),
      );

  static Text caption(String text,
          {Color? color,
          int? fontSize,
          TextDecoration? textDecoration,
          TextAlign? textAlign}) =>
      Text(
        text,
        textAlign: textAlign,
        style: PlatformStyles.caption!.apply(
            color: color,
            decoration: textDecoration,
            fontSizeFactor:
                calcFontSize(fontSize, PlatformStyles.button!.fontSize!)),
      );
}

abstract class KTextColor {
  static TextStyle white = TextStyle(color: Color(0xFFFFFFFFF));
}

double calcFontSize(int? fontSize, double currentFontSize) {
  return fontSize != null ? fontSize / currentFontSize : 1;
}
