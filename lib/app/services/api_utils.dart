import 'package:drivers/api/exceptions/base_exceptions.dart';

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
