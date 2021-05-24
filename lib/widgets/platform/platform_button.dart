import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mixnote/abstracts/platform_widgets.dart';

class PlatformButton extends PlatformWidget<CupertinoButton, ElevatedButton> {
  PlatformButton(
      {required this.child,
      required this.onPressed,
      this.buttonStyle,
      this.borderRadius,
      this.color,
      this.padding,
      this.disabledColor = Colors.grey,});

  final Widget child;
  final VoidCallback? onPressed;
  final Color? color;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Color disabledColor;
  final ButtonStyle? buttonStyle;

  @override
  CupertinoButton createIosWidget(BuildContext context) {
    return CupertinoButton(
      child: child,
      onPressed: onPressed,
      color: color,
      borderRadius: borderRadius,
      padding: padding,
      disabledColor: disabledColor,
      pressedOpacity: .8,
    );
  }

  @override
  ElevatedButton createAndroidWidget(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: buttonStyle,
    );
  }
}
