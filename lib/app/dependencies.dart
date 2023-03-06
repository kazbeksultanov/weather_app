import 'package:drivers/dependencies.dart';
import 'package:drivers/logger/logger.dart';
import 'package:drivers/transactions/transactions_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/router.dart';
import 'package:weather_app/app/services/clean_up.dart';
import 'package:weather_app/app/services/debug.dart';
import 'package:weather_app/app/services/errors.dart';
import 'package:weather_app/app/services/impl/debug.dart';
import 'package:weather_app/app/storages/impl/config.dart';
import 'package:weather_app/app/storages/storage.dart';
import 'package:weather_app/app/use_cases/impl/launcher.dart';
import 'package:weather_app/app/use_cases/impl/loading_error.dart';
import 'package:weather_app/app/use_cases/launcher.dart';
import 'package:weather_app/app/use_cases/loading_error.dart';
import 'package:weather_app/layers/di/api.dart';
import 'package:weather_app/layers/di/network.dart';
import 'package:weather_app/layers/di/service.dart';
import 'package:weather_app/layers/di/storages.dart';
import 'package:weather_app/layers/di/ui_services.dart';
import 'package:weather_app/layers/di/use_cases.dart';

import 'bloc/app/bloc.dart';

Future<void> setupConfig(AppConfig config, {bool notify = true}) async {
  final sl = GetIt.instance;

  sl.allowReassignment = true;
  sl.registerSingleton<AppConfig>(config);

  if (notify) {
    BlocProvider.of<AppBloc>(getCurrentContext).add(OnUpdateConfig(config));
  }
}

Future<void> setupDependencies() async {
  final appConfig = resolveDependency<AppConfig>();

  await setupNetworkDependencies(appConfig.configs);
  await setupApiDependencies(appConfig.configs);
  await setupServiceDependencies(appConfig.configs);
  await setupStoragesDependencies(appConfig.configs);
  await setupUseCasesDependencies(appConfig.configs);
  await setupUIServicesDependencies(appConfig.configs);

  if (appConfig.configs.apiLoggingEnabled) {
    await Logger.init(LogParametr(maxLogsCount: appConfig.configs.maxLogsCount));
  }
}

Future<void> setupLauncherDependencies(AppConfig config) async {
  final sl = GetIt.instance;
  await setupConfig(config, notify: false);

  sl.registerLazySingleton<ErrorsService>(
    ErrorsService.new,
  );
  sl.registerFactory<LoadingErrorUseCase>(
    () => LoadingErrorUseCaseImpl(
      resolveDependency(),
    ),
  );
  sl.registerSingleton<SingleStorageService<AppConfig>>(const ConfigStorage());

  sl.registerLazySingleton<DebugConfigService>(
    () => DebugConfigServiceImpl(
      resolveDependency<AppRouter>(),
      resolveDependency<SingleStorageService<AppConfig>>(),
      config,
      () => resolveDependency<CleanUpService>(),
    ),
  );
  sl.registerFactory<LauncherUseCase>(
    () => LauncherUseCaseImpl(
      resolveDependency<DebugConfigService>(),
      () => resolveDependency<TransactionsManager>(),
    ),
  );

  sl.registerSingleton<AppRouter>(AppRouter());
}
