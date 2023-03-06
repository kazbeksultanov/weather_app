import 'package:meta/meta.dart';
import 'package:optional/optional.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/models/common.dart';

@immutable
abstract class AppEvent {}

class OnError extends AppEvent {
  final Object exception;
  final StackTrace stackTrace;

  OnError(this.exception, this.stackTrace);
}

class OnUpdateTheme extends AppEvent {
  final AppThemeVariant theme;

  OnUpdateTheme(this.theme);
}

class OnSetEnabledDebugServices extends AppEvent {
  final bool? isEnabled;

  OnSetEnabledDebugServices({this.isEnabled = false});
}

class OnUpdateConfig extends AppEvent {
  final AppConfig config;

  OnUpdateConfig(this.config);
}

class OnChangeWarningMessageState extends AppEvent {
  final bool isWarningMessageExpanded;

  OnChangeWarningMessageState({required this.isWarningMessageExpanded});
}

class OnUpdateWarningMessage extends AppEvent {
  final Optional<String> warningMessage;

  OnUpdateWarningMessage({required this.warningMessage});
}
