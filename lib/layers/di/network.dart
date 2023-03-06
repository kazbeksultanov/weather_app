import 'package:dio/dio.dart';
import 'package:drivers/alice/lib/alice.dart';
import 'package:drivers/dependencies.dart';
import 'package:drivers/online_connection_check.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/app/config.dart';

Future<void> setupNetworkDependencies(ConfigSpec config) async {
  final sl = GetIt.instance;

  final superNavigatorKey = GlobalKey<NavigatorState>();
  final rootNavigatorKey = GlobalKey<NavigatorState>();

  sl.registerSingleton(superNavigatorKey, instanceName: 'SuperRootNavigator');
  sl.registerSingleton(rootNavigatorKey, instanceName: 'RootNavigator');

  sl.registerSingleton<OnlineConnectionChecker>(
    OnlineConnectionChecker(
      apiAddresses: [
        AddressCheckOptions(simpleAddress: config.geoCodingApiBaseUrl),
        AddressCheckOptions(simpleAddress: config.weatherApiBaseUrl),
      ],
    ),
  );

  sl.registerFactory<Dio>(
    () => _createDio(config),
  );

  sl.registerLazySingleton<Alice>(
    () => Alice(
      showNotification: false,
      darkTheme: false,
      maxCallsCount: 1000,
      navigatorKey: getGlobalKeyNavigatorState,
    ),
  );
}

Dio _createDio(ConfigSpec config) {
  final dio = Dio();

  if (config.apiLoggingEnabled) {
    dio.interceptors.add(
      LogInterceptor(
        requestHeader: true,
        responseHeader: true,
        requestBody: true,
        responseBody: true,
      ),
    );
  }

  if (config.apiLoggingAliceEnabled) {
    dio.interceptors.add(resolveDependency<Alice>().getDioInterceptor());
  }

  return dio;
}
