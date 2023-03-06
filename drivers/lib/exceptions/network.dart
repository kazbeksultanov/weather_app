import 'package:localization/strings.dart';
import 'package:localized_string/localized_string.dart';

import 'common.dart';

abstract class NetworkException implements LogicException {}

class ConnectionException implements NetworkException {
  @override
  LocalizedString get localizedMessage => AppStrings.string((s) => s.connectionError);
}

class NoInternetException implements NetworkException {
  @override
  LocalizedString get localizedMessage => AppStrings.string((s) => s.noInternetError);
}

class NoConnectionToOurServersException implements NetworkException {
  @override
  LocalizedString get localizedMessage => AppStrings.string((s) => s.noConnectionToOurServers);
}
