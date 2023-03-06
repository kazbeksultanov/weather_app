import 'package:drivers/bloc.dart';

abstract class ConfigListViewEvent extends PageEvent {
  const ConfigListViewEvent();
}

class OnLoad extends ConfigListViewEvent {
  @override
  List<Object> get props => [];
}

class OnUpdateConfigValueClick extends ConfigListViewEvent {
  final int id;
  final dynamic value;
  final dynamic newValue;

  const OnUpdateConfigValueClick(this.id, this.value, {this.newValue});

  @override
  List<Object> get props => [id];
}

class OnAddClick extends ConfigListViewEvent {
  const OnAddClick();

  @override
  List<Object> get props => [];
}

class OnDeleteClick extends ConfigListViewEvent {
  const OnDeleteClick(this.index);
  final int index;

  @override
  List<Object> get props => [index];
}
