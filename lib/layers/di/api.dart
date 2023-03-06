import 'package:dio/dio.dart';
import 'package:drivers/api/dio_client.dart';
import 'package:drivers/dependencies.dart';
import 'package:drivers/online_connection_check.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/layers/services/gateway_geo_coding.dart';
import 'package:weather_app/layers/services/gateway_weather.dart';
import 'package:weather_app/layers/services/impl/gateway_geo_coding.dart';
import 'package:weather_app/layers/services/impl/gateway_weather.dart';

Future<void> setupApiDependencies(ConfigSpec config) async {
  final sl = GetIt.instance;

  sl.registerLazySingleton<GeoCodingApiGateway>(
    () => GeoCodingApiGatewayImpl(
      DioClient(
        resolveDependency<Dio>(),
        resolveDependency<OnlineConnectionChecker>(),
        baseEndpoint: config.geoCodingApiBaseUrl,
      ),
    ),
  );

  sl.registerLazySingleton<WeatherApiGateway>(
    () => WeatherApiGatewayImpl(
      DioClient(
        resolveDependency<Dio>(),
        resolveDependency<OnlineConnectionChecker>(),
        baseEndpoint: config.weatherApiBaseUrl,
      ),
    ),
  );
}
