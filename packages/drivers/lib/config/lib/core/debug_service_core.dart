// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drivers/config/lib/models/config_models.dart';
import 'package:flutter/material.dart';

class ConfigServiceCore {
  final GlobalKey<NavigatorState> navigatorKey;

  /// Call on ```onConfigChange``` or on reset button tap
  ///
  /// For launch app from start page and delete all previous data
  final VoidCallback? onResetApp;

  final Function(Config) onConfigChange;

  /// Current app config, can changable
  final Config config;

  /// Show button predefined config, on tap button call ```onConfigChange``` with value
  final List<DebugValue<Config>> predefinedConfigs;

  /// Show list data
  ///
  /// exemple:
  ///
  ///
  /// ```app version,
  /// device os,
  /// os version,```
  final List<DebugValue<String>> generalInformation;

  const ConfigServiceCore({
    required this.config,
    required this.navigatorKey,
    required this.generalInformation,
    required this.onConfigChange,
    required this.predefinedConfigs,
    this.onResetApp,
  });

  BuildContext? get context => navigatorKey.currentState?.context;

  ConfigServiceCore copyWith({
    GlobalKey<NavigatorState>? navigatorKey,
    VoidCallback? onResetApp,
    Function(Config)? onConfigChange,
    Config? config,
    List<DebugValue<Config>>? predefinedConfigs,
    List<DebugValue<String>>? generalInformation,
  }) {
    return ConfigServiceCore(
      navigatorKey: navigatorKey ?? this.navigatorKey,
      onResetApp: onResetApp ?? this.onResetApp,
      onConfigChange: onConfigChange ?? this.onConfigChange,
      config: config ?? this.config,
      predefinedConfigs: predefinedConfigs ?? this.predefinedConfigs,
      generalInformation: generalInformation ?? this.generalInformation,
    );
  }
}
