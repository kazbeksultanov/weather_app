import 'package:flutter/foundation.dart';

enum AppKeys {
  ///
  pageWeatherDashboard,

  ///
  pageSearch,
  pageSearchCityName,
}

extension WidgetKeysExt on AppKeys {
  Key key() => Key(name);
}
