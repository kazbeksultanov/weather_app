import 'package:drivers/bloc.dart';
import 'package:drivers/config/lib/models/config_models.dart';
import 'package:drivers/models/app_error.dart';

abstract class DebugServicesState extends PageState {}

class LoadingState extends DebugServicesState {
  @override
  List<Object> get props => [];
}

class LoadedState extends DebugServicesState {
  final bool updated;
  final Config? currentConfig;
  final List<DebugValue<Config>> configs;
  final List<DebugValue<String>> data;

  LoadedState(this.data, this.currentConfig, this.configs, {required this.updated});

  @override
  List<Object> get props => [data, updated, configs];
}

abstract class AwaitingState {}

class AwaitingPredefinedConfig extends LoadedState implements AwaitingState {
  final String id;

  AwaitingPredefinedConfig(this.id, List<DebugValue<String>> data, {required bool updated})
      : super(data, null, [], updated: updated);

  @override
  List<Object> get props => [...super.props, id];
}

class LoadingErrorState extends DebugServicesState {
  final AppError error;

  LoadingErrorState(this.error);

  @override
  List<Object> get props => [error];
}
