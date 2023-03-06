import 'package:drivers/bloc.dart';
import 'package:drivers/config/lib/models/config_models.dart';

abstract class DebugServiceEvent extends PageEvent {
  const DebugServiceEvent();
}

class OnLoad extends DebugServiceEvent {
  @override
  List<Object> get props => [];
}

class OnReset extends DebugServiceEvent {
  @override
  List<Object> get props => [];
}

class OnCopyClick extends DebugServiceEvent {
  final String? value;

  const OnCopyClick(this.value);

  @override
  List<Object?> get props => [value];
}

class OnOpenConfigClick extends DebugServiceEvent {
  final Map<String, dynamic> data;
  const OnOpenConfigClick(this.data);

  @override
  List<Object?> get props => [data];
}

class OnUpdateConfig extends DebugServiceEvent {
  final String id;
  final Config config;

  const OnUpdateConfig(this.id, this.config);

  @override
  List<Object> get props => [id, config];
}
