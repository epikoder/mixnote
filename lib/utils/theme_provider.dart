import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mixnote/utils/app_theme.dart';
import 'package:mixnote/utils/file_system.dart';
import 'package:mixnote/utils/foundation.dart';

class ThemeProvider {
  ThemeProvider._internals();
  static StreamController _themeProviderController = StreamController.broadcast();
  Stream get themeProviderStream => _themeProviderController.stream;
  static ThemeProvider get instance => ThemeProvider._internals();

  Future<bool> get isDark async => await _themeMode() == ThemeMode.dark ? true : false;

  get darkTheme => Platform.isIOS ? AppTheme.iosThemeDataDark : AppTheme.themeDataDark;
  get lightTheme => Platform.isIOS ? AppTheme.iosThemeData : AppTheme.themeData;

  static Future<ThemeMode> _themeMode() async {
    final path = await FileSystem.localPath;
    File file = File('$path/.theme');
    if (!file.existsSync()) {
      setTheme(ThemeMode.light);
      return ThemeMode.light;
    }

    final String themeInfo = await file.readAsString();

    late ThemeMode themeMode;
    switch (themeInfo) {
      case 'ThemeMode.system':
        themeMode = isPlatformDark ? ThemeMode.dark : ThemeMode.light;
        break;
      case 'ThemeMode.dark':
        themeMode = ThemeMode.dark;
        break;
      default:
        themeMode = ThemeMode.light;
        break;
    }

    return themeMode;
  }

  static Future<ThemeMode> getTheme() async {
    return _themeMode();
  }

  static Future setTheme(ThemeMode themeMode) async {
    final path = await FileSystem.localPath;
    await File('$path/.theme').writeAsString(themeMode.toString());

    if (themeMode == ThemeMode.system) {
      themeMode = isPlatformDark ? ThemeMode.dark : ThemeMode.light;
    }
    _themeProviderController.add(themeMode);
  }

  void dispose() {
    _themeProviderController.close();
  }
}
