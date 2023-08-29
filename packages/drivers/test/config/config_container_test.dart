// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drivers/config/lib/models/config.dart';
import 'package:flutter_test/flutter_test.dart';

class DemoConfigSpec implements Config {
  final String name;
  final bool isDebugEnabled;
  final int intValue;
  final double doubleValue;

  @override
  late final ConfigContainer container;

  DemoConfigSpec({
    this.name = 'My App',
    this.isDebugEnabled = false,
    this.intValue = 12,
    this.doubleValue = 34,
  }) {
    container = ConfigContainer(this);
  }

  DemoConfigSpec copyWith({
    String? name,
    bool? isDebugEnabled,
    int? intValue,
    double? doubleValue,
  }) {
    return DemoConfigSpec(
      name: name ?? this.name,
      isDebugEnabled: isDebugEnabled ?? this.isDebugEnabled,
      intValue: intValue ?? this.intValue,
      doubleValue: doubleValue ?? this.doubleValue,
    );
  }

  factory DemoConfigSpec.fromJson(Map<String, dynamic> map) {
    return DemoConfigSpec(
      name: map['name'] as String,
      isDebugEnabled: map['isDebugEnabled'] as bool,
      intValue: map['intValue'] as int,
      doubleValue: map['doubleValue'] as double,
    );
  }

  @override
  Map<String, dynamic> toJsonForContainer() {
    return <String, dynamic>{
      'name': name,
      'isDebugEnabled': isDebugEnabled,
      'intValue': intValue,
      'doubleValue': doubleValue,
    };
  }

  @override
  DemoConfigSpec fromJsonForContainer(Map<String, dynamic> map) => DemoConfigSpec.fromJson(map);
}

void main() {
  final spec = DemoConfigSpec();

  test('ConfigContainer.fromJson valid', () async {
    spec.container.values['name'] = 'Hello World!';
    spec.container.values['isDebugEnabled'] = true;

    expect(spec.container.values['name'], 'Hello World!');
    expect(spec.container.values['isDebugEnabled'], true);
    spec.container.clear();
  });

  test('ConfigContainer.clear', () async {
    spec.container.values['name'] = 'Hello World!';
    spec.container.clear();
    expect(spec.container.values['name'], 'My App');
    expect(spec.container.values['intValue'], 12);
    expect(spec.container.values['isDebugEnabled'], false);
  });

  test('ConfigContainer.defaultValues', () async {
    expect(spec.container.values['name'], 'My App');
    expect(spec.container.values['isDebugEnabled'], false);
    spec.container.clear();
  });

  test('ConfigContainer.deserializeValueByKey', () async {
    expect(spec.container.deserializeValueByKey('name', 'Hello World!'), 'Hello World!');
    expect(spec.container.deserializeValueByKey('isDebugEnabled', 'true'), true);
    expect(spec.container.deserializeValueByKey('isDebugEnabled', 'false'), false);
    expect(spec.container.deserializeValueByKey('isDebugEnabled', 'hello'), false);
    expect(spec.container.deserializeValueByKey('intValue', '124'), 124);
    expect(spec.container.deserializeValueByKey('doubleValue', '124'), 124.0);
    expect(spec.container.deserializeValueByKey('doubleValue', '124.44'), 124.44);
    spec.container.clear();
  });
}
