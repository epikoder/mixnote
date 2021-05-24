import 'package:flutter/material.dart';
import 'dart:io' show Platform;

abstract class PlatformWidget<I extends Widget, A extends Widget>
    extends StatelessWidget {
  I createIosWidget(BuildContext context);
  A createAndroidWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return createIosWidget(context);
    }
    return createAndroidWidget(context);
  }
}
