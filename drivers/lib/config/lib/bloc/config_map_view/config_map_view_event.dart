import 'package:drivers/bloc.dart';

abstract class ConfigMapViewEvent extends PageEvent {
  const ConfigMapViewEvent();
}

class OnLoad extends ConfigMapViewEvent {
  @override
  List<Object> get props => [];
}

class OnUpdateConfigValueClick extends ConfigMapViewEvent {
  final String id;
  final dynamic value;
  final dynamic newValue;

  const OnUpdateConfigValueClick(this.id, this.value, {this.newValue});

  @override
  List<Object> get props => [id];
}
