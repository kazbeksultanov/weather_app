import 'package:dio/dio.dart';
import 'package:drivers/exceptions/common.dart';
import 'package:drivers/exceptions/network.dart';

import 'exceptions/base_exceptions.dart';

Exception dioErrorToException(DioError e) {
  switch (e.type) {
    case DioErrorType.response:
      return _dioErrorToApiException(e);
    case DioErrorType.cancel:
      throw CancelledException();
    default:
      throw ConnectionException();
  }
}

Exception _dioErrorToApiException(DioError dioError) {
  switch (dioError.response!.statusCode) {
    case 401:
      return ApiUnauthorizedException401(
        body: dioError.response!.data,
      );

    case 400:
      return ApiBadRequestException400(
        body: dioError.response!.data,
      );

    case 403:
      return ApiPermissionDeniedException403(
        body: dioError.response!.data,
      );

    case 404:
      return ApiNotFoundException(
        body: dioError.response!.data,
      );

    case 500:
      return ApiInternalServerException500(
        body: dioError.response!.data,
      );

    default:
      return ApiException(
        statusCode: dioError.response!.statusCode!,
        body: dioError.response!.data,
      );
  }
}
