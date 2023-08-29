import 'package:bloc/bloc.dart';
import 'package:drivers/bloc.dart';
import 'package:drivers/config/lib/core/debug_service.dart';
import 'package:drivers/config/lib/models/config.dart';
import 'package:drivers/config/lib/ui/config_list_view.dart';
import 'package:drivers/config/lib/ui/config_map_view.dart';
import 'package:drivers/config/lib/ui/update_config_value.dart';
import 'package:drivers/log.dart';
import 'package:drivers/models/app_error.dart';

import 'bloc.dart';

class ConfigMapViewBloc extends PageBloc<PageEvent, ConfigMapViewState> {
  final String title;
  final Map<String, dynamic> _data;
  final Future<bool> Function(Map<String, dynamic>) _onUpdate;

  ConfigMapViewBloc(
    this.title,
    this._data,
    this._onUpdate,
  ) : super(LoadingState()) {
    on<OnLoad>(_onLoad);
    on<OnUpdateConfigValueClick>(_onUpdateConfigValueClick);
  }

  Future<void> _onLoad(OnLoad event, Emitter<ConfigMapViewState> emit) async {
    try {
      emit(LoadedState(_data));
    } catch (e, s) {
      emit(LoadingErrorState(AppError(e, s)));
    }
  }

  Future<void> _onUpdateConfigValueClick(
      OnUpdateConfigValueClick event, Emitter<ConfigMapViewState> emit) async {
    assert(state is LoadedState, 'State: $state');

    try {
      log('config', 'event id: ${event.id}');

      switch (ConfigAdapter.getValueType(event.value)) {
        case ConfigType.bool:
          _data[event.id] = event.newValue as bool;
          await _onUpdate(_data);

          break;
        case ConfigType.map:
          await ConfigService.push(ConfigMapViewPage.route(event.id, event.value, (data) async {
            _data[event.id] = data;
            return _onUpdate(_data);
          }));
          break;
        case ConfigType.list:
          final configListDataKey = ConfigListDataKey.tryFromJson(event.id);

          await ConfigService.push(
            ConfigListViewPage.route(
              configListDataKey?.key ?? event.id,
              event.value,
              (data) async {
                _data[event.id] = data;
                return _onUpdate(_data);
              },
              defaultItem: configListDataKey,
            ),
          );
          break;
        case ConfigType.int:
        case ConfigType.double:
        case ConfigType.string:
          await ConfigService.push(
            DebugUpdateConfigValuePage.route(
              event.id,
              event.value,
              (data) async {
                _data[event.id] = data;
                return _onUpdate(_data);
              },
            ),
          );

          break;
      }
    } catch (e) {
      await ConfigService.showNotification(e.toString());
      log('DebugServiceError', e.toString());
    }
  }
}
