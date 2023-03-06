import 'package:dio/dio.dart';
import 'package:drivers/api/dio_client.dart';
import 'package:drivers/session.dart';
import 'package:optional/optional.dart';
import 'package:weather_app/layers/services/gateway_weather.dart';

import '../schemes.dart';
import 'gateway_geo_coding.dart';

class WeatherApiGatewayImpl implements WeatherApiGateway {
  final DioClient _client;

  const WeatherApiGatewayImpl(this._client);

  @override
  Future<ForecastResponse> getForecast({
    required int id,
    required double latitude,
    required double longitude,
    CancelToken? cancelToken,
    Optional<Session> session = const Optional.empty(),
  }) =>
      errorInterceptor(() async {
        final response = await _client.get(
          '/v1/forecast?latitude=$latitude&longitude=$longitude&current_weather=true',
          cancelToken: cancelToken,
          session: session,
        );
        return ForecastResponse.fromJson(_client.getJsonBody(response)!).copyWith(id: id);
      });
}
