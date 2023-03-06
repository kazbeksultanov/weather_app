import 'package:dio/dio.dart';
import 'package:drivers/api/dio_client.dart';
import 'package:drivers/api/exceptions/base_exceptions.dart';
import 'package:drivers/session.dart';
import 'package:optional/optional.dart';
import 'package:weather_app/layers/services/gateway_geo_coding.dart';

import '../schemes.dart';

class GeoCodingApiGatewayImpl implements GeoCodingApiGateway {
  final DioClient _client;

  const GeoCodingApiGatewayImpl(this._client);

  @override
  Future<SearchCitiesResponse> getSearchCities({
    required String name,
    int count = 10,
    CancelToken? cancelToken,
    Optional<Session> session = const Optional.empty(),
  }) =>
      errorInterceptor(() async {
        final response = await _client.get(
          '/v1/search?name=$name&count=$count',
          cancelToken: cancelToken,
          session: session,
        );
        return SearchCitiesResponse.fromJson(_client.getJsonBody(response)!);
      });
}

Future<T> errorInterceptor<T>(Future<T> Function() apiCall) async {
  try {
    return await apiCall();
  } on ApiBadRequestException400 catch (e) {
    throw ApiBadRequestException400(body: e.body);
  } on ApiPermissionDeniedException403 catch (e) {
    throw ApiPermissionDeniedException403(body: e.body);
  } on ApiNotFoundException catch (e) {
    throw ApiNotFoundException(body: e.body);
  } on ApiInternalServerException500 catch (e) {
    throw ApiInternalServerException500(body: e.body);
  }
}
