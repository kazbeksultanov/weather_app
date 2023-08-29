import 'package:bloc/bloc.dart';
import 'package:drivers/bloc.dart';
import 'package:drivers/config/lib/core/debug_service.dart';
import 'package:drivers/config/lib/ui/config_map_view.dart';
import 'package:drivers/log.dart';
import 'package:drivers/models/app_error.dart';
import 'package:flutter/services.dart';

import 'bloc.dart';

class DebugServicesBloc extends PageBloc<PageEvent, DebugServicesState> {
  var _isInited = false;

  DebugServicesBloc() : super(LoadingState()) {
    on<OnLoad>(_onLoad);
    on<OnReset>(_onResetClick);
    on<OnCopyClick>(_onCopyClick);
    on<OnUpdateConfig>(_onUpdateConfig);
    on<OnOpenConfigClick>(_onOpenConfigClick);
  }

  Future<void> _onLoad(OnLoad event, Emitter<DebugServicesState> emit) async {
    try {
      emit(LoadingState());

      if (!_isInited) {
        _isInited = true;
        ConfigService.init();
      }

      final data = ConfigService.core.generalInformation;
      final isConfigUpdated = ConfigService.hasUpdate;
      final isExact = ConfigService.core.config;
      emit(LoadedState(data, isExact, ConfigService.core.predefinedConfigs,
          updated: isConfigUpdated));
    } catch (e, s) {
      emit(LoadingErrorState(AppError(e, s)));
    }
  }

  Future<void> _onResetClick(OnReset event, Emitter<DebugServicesState> emit) async {
    if (ConfigService.core.onResetApp != null) {
      ConfigService.core.onResetApp!();
    }
  }

  Future<void> _onCopyClick(OnCopyClick event, Emitter<DebugServicesState> emit) async {
    await Clipboard.setData(ClipboardData(text: event.value!));
  }

  Future<void> _onOpenConfigClick(OnOpenConfigClick event, Emitter<DebugServicesState> emit) async {
    await ConfigService.push(
      ConfigMapViewPage.route(
        'Config',
        event.data,
        (final data) async {
          try {
            final config = ConfigService.core.config.fromJsonForContainer(data);
            await ConfigService.core.onConfigChange(config);
            ConfigService.core = ConfigService.core.copyWith(config: config);
            ConfigService.hasUpdate = true;
            add(OnLoad());
            return true;
          } catch (e) {
            await ConfigService.showNotification(e.toString());
            log('DebugServiceError', e.toString());
          }
          return false;
        },
      ),
    );
  }

  Future<void> _onUpdateConfig(OnUpdateConfig event, Emitter<DebugServicesState> emit) async {
    assert(state is LoadedState, 'State: $state');

    try {
      await ConfigService.core.onConfigChange(event.config);
      ConfigService.core = ConfigService.core.copyWith(config: event.config);
      ConfigService.hasUpdate = true;
      add(OnLoad());
    } catch (e) {
      await ConfigService.showNotification(e.toString());
      log('DebugServiceError', e.toString());
    }
  }
}
