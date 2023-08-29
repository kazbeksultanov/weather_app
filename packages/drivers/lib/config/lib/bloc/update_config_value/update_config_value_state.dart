import 'package:drivers/bloc.dart';
import 'package:drivers/models/app_error.dart';

abstract class UpdateConfigValueState extends PageState {}

class LoadingState extends UpdateConfigValueState {
  @override
  List<Object> get props => [];
}

class LoadedState extends UpdateConfigValueState {
  final String name;
  final String value;

  LoadedState(this.name, this.value);

  @override
  List<Object> get props => [name, value];
}

class AwaitingSetValueState extends LoadedState {
  AwaitingSetValueState(String name, String value) : super(name, value);
}

class LoadingErrorState extends UpdateConfigValueState {
  final AppError error;

  LoadingErrorState(this.error);

  @override
  List<Object> get props => [error];
}
