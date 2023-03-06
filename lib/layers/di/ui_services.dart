import 'package:drivers/dependencies.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/ui_services/notifications/impl/toast.dart';
import 'package:weather_app/app/ui_services/notifications/toast.dart';

Future<void> setupUIServicesDependencies(ConfigSpec config) async {
  pushDependency<ToastNotifications>(ToastNotificationsFlutterToast());
}
