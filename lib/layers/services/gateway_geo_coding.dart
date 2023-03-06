import 'package:dio/dio.dart';
import 'package:drivers/session.dart';
import 'package:optional/optional.dart';
import 'package:weather_app/layers/services/schemes.dart';

abstract class GeoCodingApiGateway {
  Future<SearchCitiesResponse> getSearchCities({
    required String name,
    int count = 10,
    CancelToken? cancelToken,
    Optional<Session> session = const Optional.empty(),
  });
}
