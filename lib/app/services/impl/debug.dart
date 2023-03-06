import 'dart:io';

import 'package:drivers/config/lib/core/debug_service_core.dart';
import 'package:drivers/config/lib/models/config.dart';
import 'package:drivers/dependencies.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/app/bloc/app/app_bloc.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/configs.dart';
import 'package:weather_app/app/dependencies.dart';
import 'package:weather_app/app/router.dart';
import 'package:weather_app/app/services/clean_up.dart';
import 'package:weather_app/app/services/debug.dart';
import 'package:weather_app/app/storages/storage.dart';

class DebugConfigServiceImpl implements DebugConfigService {
  final AppRouter _router;
  final SingleStorageService<AppConfig> _configStorage;
  final AppConfig _defaultAppConfig;
  final CleanUpService Function() _cleanUpServiceFactory;

  CleanUpService get _cleanUpService => _cleanUpServiceFactory();

  DebugConfigServiceImpl(
    this._router,
    this._configStorage,
    this._defaultAppConfig,
    this._cleanUpServiceFactory,
  );

  @override
  Future<AppConfig> retrieveConfig() async {
    try {
      final def = _defaultAppConfig;
      if (def.configs.configName != 'RELEASE') {
        final config = await _configStorage.read();
        await setupConfig(config!);
        return config;
      }
      return def;
    } catch (_) {
      final config = _defaultAppConfig;
      await _configStorage.write(config);
      await setupConfig(config);
      return config;
    }
  }

  @override
  Future<ConfigServiceCore> getCore() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return ConfigServiceCore(
      config: resolveDependency<AppConfig>(),
      navigatorKey: getGlobalKeyNavigatorState,
      onConfigChange: (value) async {
        await updateConfig(value as AppConfig);
      },
      onResetApp: () async {
        await _cleanUpService.cleanAll(forcedClean: true);
        await _router.weatherDashboard.closeAllOpenWeatherDashboard(
          onOpen: recheckDebugFloatingButtonAfterCloseAll,
        );
      },
      generalInformation: [
        DebugValue('Version', packageInfo.version.toString()),
        DebugValue('Package name', packageInfo.packageName.toString()),
        DebugValue('Build number', packageInfo.buildNumber.toString()),
        DebugValue('OS', Platform.operatingSystem.toString()),
        DebugValue('OS Version', Platform.operatingSystemVersion.toString()),
      ],
      predefinedConfigs: [
        for (final e in AppConfigs.values)
          DebugValue(
            e.dataClass.configs.configName,
            e.dataClass,
          ),
      ],
    );
  }

  @override
  Future<void> updateConfig(AppConfig config) async {
    await _configStorage.write(config);
    await setupConfig(config);
    await setUpApp();
  }
}
