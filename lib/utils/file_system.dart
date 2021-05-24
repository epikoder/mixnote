import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileSystem {
  FileSystem._internals();
  static FileSystem get instance => FileSystem._internals();

  static Future<String> get localPath async =>
      await FileSystem._internals()._localPath;

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _settingsFile async {
    final path = await _localPath;
    return File('$path/.settings');
  }

  Future<File> writeSettings(Map<String, dynamic> value) async {
    final File settings = await _settingsFile;
    String content = await settings.readAsString();
    return settings.writeAsString("$content , ${value.toString()}");
  }

  Future readSettings() async {
    final File settings = await _settingsFile;
    final String content = await settings.readAsString();
  }
}
