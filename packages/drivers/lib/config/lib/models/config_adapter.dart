enum ConfigType { map, string, bool, int, double, list }

class ConfigAdapter {
  const ConfigAdapter();

  // ignore: avoid_annotating_with_dynamic
  static ConfigType getValueType(dynamic value) {
    if (value is Map) {
      return ConfigType.map;
    }
    if (value is List) {
      return ConfigType.list;
    }
    if (value is int) {
      return ConfigType.int;
    }
    if (value is double) {
      return ConfigType.double;
    }
    if (value is bool) {
      return ConfigType.bool;
    }

    return ConfigType.string;
  }

  static dynamic valueFromString(ConfigType type, String? value) {
    if (value == null) {
      return null;
    }
    switch (type) {
      case ConfigType.string:
        return value;

      case ConfigType.int:
        return int.parse(value);

      case ConfigType.double:
        return double.parse(value);

      case ConfigType.bool:
        return value == 'true';

      default:
        throw StateError('Unsupported type: $type');
    }
  }
}
