import 'package:drivers/models/app_error.dart';
import 'package:meta/meta.dart';
import 'package:optional/optional.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/ui/colors.dart';

@immutable
class AppState {
  final ColorSchemeData colorScheme;
  final Optional<AppError> lastError;
  final AppConfig appConfig;
  final bool initialized;
  final bool isWarningMessageExpanded;
  final Optional<String> warningMessage;

  const AppState({
    required this.colorScheme,
    required this.appConfig,
    this.warningMessage = const Optional.empty(),
    this.isWarningMessageExpanded = true,
    this.lastError = const Optional.empty(),
    this.initialized = false,
  });

  AppState copyWith({
    ColorSchemeData? colorScheme,
    Optional<AppError>? lastError,
    AppConfig? appConfig,
    bool? initialized,
    bool? isWarningMessageExpanded,
    Optional<String>? warningMessage,
  }) {
    return AppState(
      colorScheme: colorScheme ?? this.colorScheme,
      lastError: lastError ?? this.lastError,
      appConfig: appConfig ?? this.appConfig,
      initialized: initialized ?? this.initialized,
      isWarningMessageExpanded: isWarningMessageExpanded ?? this.isWarningMessageExpanded,
      warningMessage: warningMessage ?? this.warningMessage,
    );
  }
}
