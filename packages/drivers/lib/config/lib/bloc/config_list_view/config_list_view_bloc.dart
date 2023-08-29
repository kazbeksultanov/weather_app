import 'package:bloc/bloc.dart';
import 'package:drivers/bloc.dart';
import 'package:drivers/config/lib/core/debug_service.dart';
import 'package:drivers/config/lib/models/config.dart';
import 'package:drivers/config/lib/ui/config_map_view.dart';
import 'package:drivers/config/lib/ui/update_config_value.dart';
import 'package:drivers/log.dart';
import 'package:drivers/models/app_error.dart';

import 'bloc.dart';

class ConfigListViewBloc<T> extends PageBloc<PageEvent, ConfigListViewState> {
  final String title;
  final List<T> _data;
  final Future<bool> Function(List<T>) _onUpdate;
  final ConfigListDataKey? defaultItem;

  ConfigListViewBloc(
    this.title,
    this._data,
    this._onUpdate,
    this.defaultItem,
  ) : super(LoadingState()) {
    on<OnLoad>(_onLoad);
    on<OnAddClick>(_onAddClick);
    on<OnUpdateConfigValueClick>(_onUpdateConfigValueClick);
    on<OnDeleteClick>(_onDeleteClick);
  }

  Future<void> _onLoad(OnLoad event, Emitter<ConfigListViewState> emit) async {
    try {
      emit(LoadedState(_data));
    } catch (e, s) {
      emit(LoadingErrorState(AppError(e, s)));
    }
  }

  Future<void> _onAddClick(OnAddClick event, Emitter<ConfigListViewState> emit) async {
    final type = ConfigAdapter.getValueType(defaultItem!.defaultItem);
    if (type == ConfigType.map) {
      final Map<String, dynamic> newValue = Map.from(defaultItem!.defaultItem);
      _data.add(newValue as T);
      await _onUpdate(_data);
    } else {
      _data.add(defaultItem!.defaultItem);
      await _onUpdate(_data);
    }
  }

  Future<void> _onDeleteClick(OnDeleteClick event, Emitter<ConfigListViewState> emit) async {
    _data.removeAt(event.index);
    if (await _onUpdate(_data)) {
      emit(LoadedState(_data));
    }
  }

  Future<void> _onUpdateConfigValueClick(
      OnUpdateConfigValueClick event, Emitter<ConfigListViewState> emit) async {
    assert(state is LoadedState, 'State: $state');

    try {
      log('config', 'event id: ${event.id}');

      switch (ConfigAdapter.getValueType(event.value)) {
        case ConfigType.bool:
          _data[event.id] = event.newValue as T;
          await _onUpdate(_data);
          break;
        case ConfigType.map:
          await ConfigService.push(
            ConfigMapViewPage.route(
              '${event.id} item',
              event.value,
              (data) async {
                _data[event.id] = data as T;
                return _onUpdate(_data);
              },
            ),
          );

          break;
        case ConfigType.list:
          throw Exception('Can not open list in list');
        case ConfigType.int:
        case ConfigType.double:
        case ConfigType.string:
          await ConfigService.push(
            DebugUpdateConfigValuePage.route(
              '${event.id} item',
              event.value,
              (data) async {
                _data[event.id] = data as T;
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
