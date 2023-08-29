import 'package:dio/dio.dart';
import 'package:drivers/api/headers_signature.dart';
import 'package:drivers/exceptions/common.dart';
import 'package:drivers/exceptions/network.dart';
import 'package:drivers/online_connection_check.dart';
import 'package:drivers/session.dart';
import 'package:flutter/cupertino.dart';
import 'package:optional/optional.dart';

import 'errors_handler.dart';

class DioClient {
  final Dio _dio;
  final String baseEndpoint;
  final OnlineConnectionChecker _onlineConnectionChecker;

  DioClient(
    this._dio,
    this._onlineConnectionChecker, {
    required this.baseEndpoint,
  });

  Future<Options> _defaultOptions(Session session) async {
    final sign = await session.sign();

    if (sign is HeadersSignature) {
      return Options(headers: sign.headers);
    } else {
      return Options();
    }
  }

  Future<Options> _createOptions(
    Options? options,
    Optional<Session> session,
  ) async {
    if (options != null) {
      return options;
    } else if (session.isPresent) {
      return _defaultOptions(session.value);
    } else {
      return Options();
    }
  }

  Future<Response<T>> get<T>(
    String endpoint, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Optional<Session> session = const Optional.empty(),
  }) async {
    return _request<T>(
      () async => _dio.get(
        '$baseEndpoint$endpoint',
        options: await _createOptions(options, session),
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      ),
    );
  }

  Future<Response<T>> post<T>(
    String endpoint, {
    // ignore: avoid_annotating_with_dynamic
    dynamic data,
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Optional<Session> session = const Optional.empty(),
  }) async {
    return _request<T>(
      () async => _dio.post(
        '$baseEndpoint$endpoint',
        data: data,
        options: await _createOptions(options, session),
        cancelToken: cancelToken,
        queryParameters: queryParameters,
      ),
    );
  }

  Future<Response<T>> patch<T>(
    String endpoint, {
    // ignore: avoid_annotating_with_dynamic
    dynamic data,
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Optional<Session> session = const Optional.empty(),
  }) async {
    return _request<T>(
      () async => _dio.patch(
        '$baseEndpoint$endpoint',
        data: data,
        options: await _createOptions(options, session),
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      ),
    );
  }

  Future<Response<T>> put<T>(
    String endpoint, {
    // ignore: avoid_annotating_with_dynamic
    dynamic data,
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Optional<Session> session = const Optional.empty(),
  }) async {
    return _request<T>(
      () async => _dio.put(
        '$baseEndpoint$endpoint',
        data: data,
        options: await _createOptions(options, session),
        cancelToken: cancelToken,
        queryParameters: queryParameters,
      ),
    );
  }

  Future<Response<T>> delete<T>(
    String endpoint, {
    // ignore: avoid_annotating_with_dynamic
    dynamic data,
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Optional<Session> session = const Optional.empty(),
  }) async {
    return _request<T>(
      () async => _dio.delete(
        '$baseEndpoint$endpoint',
        data: data,
        options: await _createOptions(options, session),
        cancelToken: cancelToken,
        queryParameters: queryParameters,
      ),
    );
  }

  Future<Response<T>> _request<T>(Future<Response<T>> Function() handler) async {
    await _checkNetworkAvailability();
    final d1 = DateTime.now();
    try {
      final response = await handler();
      _reportTimeDiff(d1);
      return response;
    } on DioError catch (e) {
      _reportTimeDiff(d1);
      throw dioErrorToException(e);
    } catch (e, stackTrace) {
      _reportTimeDiff(d1);
      debugPrint(e.toString());
      debugPrint(stackTrace.toString());

      throw ConnectionException();
    }
  }

  void _reportTimeDiff(DateTime d1) {
    final duration = DateTime.now().difference(d1);
    debugPrint(
        '===>>> Request Completed in ${duration.inSeconds} sec, ${duration.inMilliseconds % 1000} milli sec');
  }

  Map<String, dynamic>? getJsonBody<T>(Response<T> response) {
    try {
      return response.data as Map<String, dynamic>?;
    } on Exception catch (e, stackTrace) {
      debugPrint(stackTrace.toString());
      throw const SchemeConsistencyException('Bad body format');
    }
  }

  List<dynamic>? getJsonBodyList<T>(Response<T> response) {
    try {
      return response.data as List<dynamic>?;
    } on Exception catch (e, stackTrace) {
      debugPrint(stackTrace.toString());
      throw Exception('Bad body format');
    }
  }

  Future<void> _checkNetworkAvailability() async {
    if (!await _onlineConnectionChecker.hasConnectionToApis) {
      final isNetworkAvailable = await _onlineConnectionChecker.hasGeneralConnection;
      if (isNetworkAvailable) {
        throw NoConnectionToOurServersException();
      } else {
        throw NoInternetException();
      }
    }
  }
}
