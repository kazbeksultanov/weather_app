import 'package:bloc/bloc.dart';
import 'package:drivers/bloc.dart';
import 'package:drivers/config/lib/core/debug_service.dart';
import 'package:drivers/config/lib/models/config_adapter.dart';
import 'package:drivers/log.dart';
import 'package:drivers/models/app_error.dart';

import 'bloc.dart';

class UpdateConfigValueBloc<T> extends PageBloc<PageEvent, UpdateConfigValueState> {
  final String _name;
  final T _value;
  final Function(T) _onUpdate;

  UpdateConfigValueBloc(
    this._name,
    this._value,
    this._onUpdate,
  ) : super(LoadingState()) {
    on<OnLoad>(_onLoad);
    on<OnUpdateValue>(_onUpdateValue);
  }

  Future<void> _onLoad(OnLoad event, Emitter<UpdateConfigValueState> emit) async {
    try {
      emit(LoadedState(_name, _value.toString()));
    } catch (e, s) {
      emit(LoadingErrorState(AppError(e, s)));
    }
  }

  Future<void> _onUpdateValue(OnUpdateValue event, Emitter<UpdateConfigValueState> emit) async {
    assert(state is LoadedState, 'State: $state');
    final currentState = state as LoadedState;

    try {
      final type = ConfigAdapter.getValueType(_value);
      _onUpdate(ConfigAdapter.valueFromString(type, event.value));
      await ConfigService.pop();
    } catch (e) {
      await ConfigService.showNotification(e.toString());
      log('DebugServiceError', e.toString());
      emit(currentState);
    }
  }
}
