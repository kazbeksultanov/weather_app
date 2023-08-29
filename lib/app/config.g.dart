// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfigSpec _$$_ConfigSpecFromJson(Map<String, dynamic> json) =>
    _$_ConfigSpec(
      configName: json['config_name'] as String,
      geoCodingApiBaseUrl: json['geo_coding_api_base_url'] as String,
      weatherApiBaseUrl: json['weather_api_base_url'] as String,
      apiLoggingEnabled: json['api_logging_enabled'] as bool,
      apiLoggingAliceEnabled: json['api_logging_alice_enabled'] as bool,
      debugServicesEnabled: json['debug_services_enabled'] as bool,
      reportCrashesEnabled: json['report_crashes_enabled'] as bool,
      isTesting: json['is_testing'] as bool,
      maxLogsCount: json['max_logs_count'] as int,
    );

Map<String, dynamic> _$$_ConfigSpecToJson(_$_ConfigSpec instance) =>
    <String, dynamic>{
      'config_name': instance.configName,
      'geo_coding_api_base_url': instance.geoCodingApiBaseUrl,
      'weather_api_base_url': instance.weatherApiBaseUrl,
      'api_logging_enabled': instance.apiLoggingEnabled,
      'api_logging_alice_enabled': instance.apiLoggingAliceEnabled,
      'debug_services_enabled': instance.debugServicesEnabled,
      'report_crashes_enabled': instance.reportCrashesEnabled,
      'is_testing': instance.isTesting,
      'max_logs_count': instance.maxLogsCount,
    };

_$_FeaturesSpec _$$_FeaturesSpecFromJson(Map<String, dynamic> json) =>
    _$_FeaturesSpec();

Map<String, dynamic> _$$_FeaturesSpecToJson(_$_FeaturesSpec instance) =>
    <String, dynamic>{};

_$_AppConfig _$$_AppConfigFromJson(Map<String, dynamic> json) => _$_AppConfig(
      appConfigs: $enumDecode(_$AppConfigsEnumMap, json['appConfigs']),
      configs: ConfigSpec.fromJson(json['configs'] as Map<String, dynamic>),
      features: FeaturesSpec.fromJson(json['features'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppConfigToJson(_$_AppConfig instance) =>
    <String, dynamic>{
      'appConfigs': _$AppConfigsEnumMap[instance.appConfigs]!,
      'configs': instance.configs.toJson(),
      'features': instance.features.toJson(),
    };

const _$AppConfigsEnumMap = {
  AppConfigs.test: 'test',
  AppConfigs.release: 'release',
};
