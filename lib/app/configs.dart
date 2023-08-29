import 'package:weather_app/app/config.dart';

enum AppConfigs {
  test,
  release,
}

extension AppConfigsExt on AppConfigs {
  AppConfig get dataClass {
    switch (this) {
      case AppConfigs.test:
        return AppConfig(
          appConfigs: AppConfigs.test,
          configs: const ConfigSpec(
            configName: 'Test',
            geoCodingApiBaseUrl: 'https://geocoding-api.open-meteo.com',
            weatherApiBaseUrl: 'https://api.open-meteo.com',
            apiLoggingEnabled: true,
            apiLoggingAliceEnabled: true,
            debugServicesEnabled: true,
            reportCrashesEnabled: false,
            isTesting: false,
            maxLogsCount: 100,
          ),
          features: const FeaturesSpec(),
        );
      case AppConfigs.release:
        return AppConfig(
          appConfigs: AppConfigs.release,
          configs: const ConfigSpec(
            configName: 'Release',
            geoCodingApiBaseUrl: 'https://geocoding-api.open-meteo.com',
            weatherApiBaseUrl: 'https://api.open-meteo.com',
            apiLoggingEnabled: false,
            apiLoggingAliceEnabled: false,
            debugServicesEnabled: false,
            reportCrashesEnabled: true,
            isTesting: false,
            maxLogsCount: 100,
          ),
          features: const FeaturesSpec(),
        );
    }
  }
}
