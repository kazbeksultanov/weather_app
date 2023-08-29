import 'package:http/http.dart';

import '../alice.dart';

// ignore_for_file: avoid_annotating_with_dynamic
extension AliceHttpExtensions on Future<Response> {
  /// Intercept http request with alice. This extension method provides additional
  /// helpful method to intercept https' response.
  Future<Response> interceptWithAlice(Alice alice, {dynamic body}) async {
    final Response response = await this;
    alice.onHttpResponse(response, body: body);
    return response;
  }
}
