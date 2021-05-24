import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mixnote/abstracts/platform_widgets.dart';

class PlatformIconButton extends PlatformWidget<CupertinoButton, IconButton> {
  PlatformIconButton(
      {required this.icon, required this.onPressed});
  final Icon icon;
  final VoidCallback? onPressed;

  @override
  CupertinoButton createIosWidget(BuildContext context) {
    return CupertinoButton(
        child: icon,
        onPressed: onPressed);
  }

  @override
  IconButton createAndroidWidget(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: icon);
  }
}
