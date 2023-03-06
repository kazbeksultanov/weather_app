import 'package:bloc/bloc.dart';

import 'bloc.dart';

class ErrorsBloc extends Bloc<ErrorsEvent, ErrorsState> {
  ErrorsBloc() : super(NoErrorsState()) {
    on<OnError>((event, emit) => emit(ErrorPresentedState(event.exception, event.stackTrace)));
    on<OnCloseError>((event, emit) => emit(NoErrorsState()));
  }
}
