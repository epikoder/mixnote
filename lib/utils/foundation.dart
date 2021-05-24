import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/scheduler.dart';

bool get isIOS =>
    foundation.defaultTargetPlatform == foundation.TargetPlatform.iOS;

bool get isPlatformDark =>
    SchedulerBinding.instance!.window.platformBrightness == Brightness.dark;
