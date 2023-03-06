import 'package:dio/dio.dart';
import 'package:drivers/session.dart';
import 'package:optional/optional.dart';
import 'package:weather_app/layers/services/schemes.dart';

abstract class WeatherApiGateway {
  Future<ForecastResponse> getForecast({
    required int id,
    required double latitude,
    required double longitude,
    CancelToken? cancelToken,
    Optional<Session> session = const Optional.empty(),
  });
}
