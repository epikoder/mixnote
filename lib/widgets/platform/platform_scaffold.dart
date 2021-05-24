import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mixnote/abstracts/platform_widgets.dart';

class PlatformScaffold extends PlatformWidget<CupertinoPageScaffold, Scaffold> {
  final Widget child;
  final AppBar? appBar;
  final ObstructingPreferredSizeWidget? iosNavigationBar;
  final Color? color;
  final bool endDrawer;

  PlatformScaffold(
      {required this.child,
      this.appBar,
      this.iosNavigationBar,
      this.color,
      this.endDrawer = true});

  @override
  Scaffold createAndroidWidget(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: child,
      backgroundColor: color,
      //endDrawer: endDrawer ? kAppDrawer() : null,
    );
  }

  @override
  CupertinoPageScaffold createIosWidget(BuildContext context) {
    return CupertinoPageScaffold(
        //navigationBar: kIosNavigationBar(),
        backgroundColor: color,
        resizeToAvoidBottomInset: true,
        child: child);
  }
}
