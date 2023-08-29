import 'package:drivers/bloc.dart';

abstract class UpdateConfigValueEvent extends PageEvent {}

class OnLoad extends UpdateConfigValueEvent {
  @override
  List<Object> get props => [];
}

class OnUpdateValue extends UpdateConfigValueEvent {
  final String value;

  OnUpdateValue(this.value);

  @override
  List<Object> get props => [value];
}
