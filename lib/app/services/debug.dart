import 'package:drivers/config/lib/core/debug_service_core.dart';
import 'package:weather_app/app/config.dart';

abstract class DebugConfigService {
  Future<AppConfig> retrieveConfig();

  Future<ConfigServiceCore> getCore();

  Future<void> updateConfig(AppConfig config);
}
