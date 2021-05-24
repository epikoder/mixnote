import 'package:get_it/get_it.dart';
import 'package:mixnote/services/app_navigator.dart';
import 'package:mixnote/services/app_service.dart';

GetIt serviceProvider = GetIt.instance;

injectServiceProvider() {
  serviceProvider.registerLazySingleton(() => AppNavigator());
  serviceProvider.registerLazySingleton(() => AppServices());
}
