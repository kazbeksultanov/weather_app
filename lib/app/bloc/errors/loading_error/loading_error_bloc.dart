import 'package:bloc/bloc.dart';
import 'package:drivers/models/app_error.dart';
import 'package:weather_app/app/bloc/errors/loading_error/bloc.dart';
import 'package:weather_app/app/router.dart';
import 'package:weather_app/app/use_cases/loading_error.dart';

class LoadingErrorBloc extends Bloc<LoadingErrorEvent, LoadErrorState> {
  final AppError _error;
  final void Function() _onRetry;
  final AppRouter _router;
  final LoadingErrorUseCase _useCase;

  LoadingErrorBloc(
    this._error,
    this._onRetry,
    this._router,
    this._useCase,
  ) : super(LoadErrorState(_error)) {
    on<OnStartError>((event, emit) => _useCase.initConnectionObserver(_error, _onRetry));
    on<OnRetry>((event, emit) => _onRetry());
    on<OnErrorDetails>((event, emit) async => _router.openErrorDetails(_error));
    on<OnDispose>((event, emit) async => _useCase.disposeConnectionObserver());
  }
}
