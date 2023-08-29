import 'package:drivers/bloc.dart';
import 'package:drivers/models/app_error.dart';

abstract class ConfigListViewState extends PageState {}

class LoadingState extends ConfigListViewState {
  @override
  List<Object> get props => [];
}

class LoadedState extends ConfigListViewState {
  final List data;

  LoadedState(this.data);

  @override
  List<Object> get props => [data];
}

class LoadingErrorState extends ConfigListViewState {
  final AppError error;

  LoadingErrorState(this.error);

  @override
  List<Object> get props => [error];
}
