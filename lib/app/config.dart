import 'package:drivers/config/lib/models/config.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/app/configs.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
class ConfigSpec with _$ConfigSpec {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ConfigSpec({
    required final String configName,
    required final String geoCodingApiBaseUrl,
    required final String weatherApiBaseUrl,
    required final bool apiLoggingEnabled,
    required final bool apiLoggingAliceEnabled,
    required final bool debugServicesEnabled,
    required final bool reportCrashesEnabled,
    required final bool isTesting,
    required final int maxLogsCount,
  }) = _ConfigSpec;

  factory ConfigSpec.fromJson(Map<String, dynamic> json) => _$ConfigSpecFromJson(json);
}

@freezed
class FeaturesSpec with _$FeaturesSpec {
  @JsonSerializable()
  const factory FeaturesSpec() = _FeaturesSpec;

  factory FeaturesSpec.fromJson(Map<String, dynamic> json) => _$FeaturesSpecFromJson(json);
}

@unfreezed
class AppConfig extends Equatable with _$AppConfig implements Config {
  @JsonSerializable(explicitToJson: true)
  factory AppConfig({
    required final AppConfigs appConfigs,
    required final ConfigSpec configs,
    required final FeaturesSpec features,
    @JsonKey(includeFromJson: false, includeToJson: false) ConfigContainer? containerValue,
  }) = _AppConfig;

  const AppConfig._();

  factory AppConfig.fromJson(Map<String, dynamic> json) => _$AppConfigFromJson(json);

  @override
  ConfigContainer get container => containerValue ??= ConfigContainer(this);

  @override
  AppConfig fromJsonForContainer(Map<String, dynamic> json) => AppConfig.fromJson(json);

  @override
  Map<String, dynamic> toJsonForContainer() => toJson();

  @override
  List<Object?> get props => [
        configs,
        features,
      ];
}

class AppConfigInherited extends InheritedWidget {
  final AppConfig config;

  const AppConfigInherited({
    required this.config,
    required Widget child,
  }) : super(child: child);

  static AppConfigInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
