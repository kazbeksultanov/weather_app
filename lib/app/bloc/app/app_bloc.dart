import 'dart:async';

import 'package:drivers/dependencies.dart';
import 'package:drivers/models/app_error.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optional/optional.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/models/common.dart';
import 'package:weather_app/app/ui/color_schemes.dart';
import 'package:weather_app/app/ui_services/debug_float_panel.dart';

import 'bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final DebugFloatPanelUIService _debugFloatButtonService;

  AppBloc(
    this._debugFloatButtonService,
    AppConfig _defaultConfig,
  ) : super(
          AppState(
            colorScheme: AppColorSchemes.dark(),
            appConfig: _defaultConfig,
          ),
        ) {
    on<OnError>(_onError);
    on<OnUpdateTheme>(_onUpdateTheme);
    on<OnSetEnabledDebugServices>(_onSetEnabledDebugServices);
    on<OnUpdateConfig>(_onUpdateConfig);
    on<OnChangeWarningMessageState>(_onChangeWarningMessage);
    on<OnUpdateWarningMessage>(_onUpdateWarningMessage);
  }

  Future<void> _onError(OnError event, Emitter<AppState> emit) async {
    final error = AppError(event.exception, event.stackTrace);
    emit(state.copyWith(lastError: Optional.of(error)));
  }

  Future<void> _onUpdateTheme(OnUpdateTheme event, Emitter<AppState> emit) async {
    switch (event.theme) {
      case AppThemeVariant.light:
        emit(state.copyWith(colorScheme: AppColorSchemes.light()));
        break;

      case AppThemeVariant.dark:
        emit(state.copyWith(colorScheme: AppColorSchemes.dark()));
        break;
    }
  }

  Future<void> _onSetEnabledDebugServices(
    OnSetEnabledDebugServices event,
    Emitter<AppState> emit,
  ) async {
    if (event.isEnabled!) {
      await _debugFloatButtonService.showDebugPanel();
    } else {
      await _debugFloatButtonService.hideDebugPanel();
    }
  }

  Future<void> _onUpdateConfig(OnUpdateConfig event, Emitter<AppState> emit) async {
    emit(state.copyWith(appConfig: event.config));
  }

  Future<void> _onChangeWarningMessage(
    OnChangeWarningMessageState event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(isWarningMessageExpanded: event.isWarningMessageExpanded));
  }

  Future<void> _onUpdateWarningMessage(
    OnUpdateWarningMessage event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(warningMessage: event.warningMessage));
  }
}

void recheckDebugFloatingButtonAfterCloseAll() {
  final _context = getCurrentContext;
  final _bloc = BlocProvider.of<AppBloc>(_context);
  _bloc.add(OnSetEnabledDebugServices(
    isEnabled: _bloc.state.appConfig.configs.debugServicesEnabled,
  ));
}
