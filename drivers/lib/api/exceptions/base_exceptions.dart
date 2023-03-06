import 'package:drivers/exceptions/common.dart';
import 'package:localization/strings.dart';
import 'package:localized_string/localized_string.dart';

class ApiException implements Exception, DiagnosticMessageException {
  final int statusCode;
  final Object body;

  ApiException({
    required this.statusCode,
    required this.body,
  });

  @override
  String get diagnosticMessage => 'Status code: $statusCode\nBody: $body';
}

class ApiUnauthorizedException401 extends ApiException {
  ApiUnauthorizedException401({
    required Object body,
  }) : super(
          statusCode: 401,
          body: body,
        );
}

class ApiPermissionDeniedException403 extends ApiException {
  ApiPermissionDeniedException403({
    required Object body,
  }) : super(
          statusCode: 403,
          body: body,
        );
}

class ApiBadRequestException400 extends ApiException {
  ApiBadRequestException400({
    required Object body,
  }) : super(
          statusCode: 400,
          body: body,
        );
}

class ApiInternalServerException500 extends ApiException implements LogicException {
  ApiInternalServerException500({
    required Object body,
  }) : super(
          statusCode: 500,
          body: body,
        );

  @override
  LocalizedString get localizedMessage => AppStrings.string((s) => s.serverRequestError);
}

class ApiNotFoundException extends ApiException {
  ApiNotFoundException({
    required Object body,
  }) : super(
          statusCode: 404,
          body: body,
        );
}
