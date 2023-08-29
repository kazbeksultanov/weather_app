import 'config.dart';

class ConfigContainer {
  final Config _config;
  final Map<String, dynamic> _values = {};

  ConfigContainer(this._config) {
    _init();
  }

  void _init() {
    final data = _config.toJsonForContainer();
    _values.clear();
    _values.addEntries(data.entries);
  }

  Map<String, dynamic> get values => _values;

  // ignore: type_annotate_public_apis
  ConfigType getValueType(value) {
    return ConfigAdapter.getValueType(value);
  }

  dynamic deserializeValueByKey(String key, String value) {
    return ConfigAdapter.valueFromString(getValueType(_values[key]), value);
  }

  void clear() {
    _init();
  }
}
