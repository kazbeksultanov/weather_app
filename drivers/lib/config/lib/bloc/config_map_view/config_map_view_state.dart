import 'package:drivers/bloc.dart';
import 'package:drivers/models/app_error.dart';

abstract class ConfigMapViewState extends PageState {}

class LoadingState extends ConfigMapViewState {
  @override
  List<Object> get props => [];
}

class LoadedState extends ConfigMapViewState {
  final Map<String, dynamic> data;

  LoadedState(this.data);

  @override
  List<Object> get props => [data];
}

class LoadingErrorState extends ConfigMapViewState {
  final AppError error;

  LoadingErrorState(this.error);

  @override
  List<Object> get props => [error];
}
