// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'config.dart';

abstract class Config {
  ConfigContainer get container;
  Map<String, dynamic> toJsonForContainer();
  Config fromJsonForContainer(Map<String, dynamic> json);
}

class ConfigListDataKey<T> {
  final String key;
  final T defaultItem;

  const ConfigListDataKey({required this.key, required this.defaultItem});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'defaultItem': defaultItem,
    };
  }

  factory ConfigListDataKey.fromMap(Map<String, dynamic> map) {
    return ConfigListDataKey<T>(
      key: map['key'] as String,
      defaultItem: map['defaultItem'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ConfigListDataKey.fromJson(String source) =>
      ConfigListDataKey.fromMap(json.decode(source) as Map<String, dynamic>);

  static ConfigListDataKey? tryFromJson(String source) {
    try {
      return ConfigListDataKey.fromMap(json.decode(source) as Map<String, dynamic>);
    } catch (e) {
      return null;
    }
  }
}

class DebugValue<T> {
  final String name;
  final T value;

  const DebugValue(this.name, this.value);
}
