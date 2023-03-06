part of 'error_details_bloc.dart';

abstract class ErrorDetailsEvent extends PageEvent {
  const ErrorDetailsEvent();
}

class OnCopyClick extends ErrorDetailsEvent {
  @override
  List<Object> get props => [];
}
