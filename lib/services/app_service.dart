import 'dart:async';
import 'dart:io';
import 'package:mixnote/utils/file_system.dart';
import 'package:mixnote/utils/theme_provider.dart';

class AppServices {
  FileSystem fileSystem = FileSystem.instance;
  ThemeProvider themeProvider = ThemeProvider.instance;

  static Future<bool> firstLaunch({bool launched = false}) async {
    String path = await FileSystem.localPath;
    File file = File('$path/.nd');
    if (!await file.exists()) {
      if (launched) {
        //await file.writeAsString(true.toString());
      }
      return Future.value(false);
    }
    return Future.value(true);
  }

  void dispose() {
    themeProvider.dispose();
  }
}
