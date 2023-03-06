import 'dart:async';

import 'package:drivers/bloc.dart';
import 'package:drivers/exceptions/network.dart';
import 'package:drivers/models/app_error.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/app/report.dart';
import 'package:weather_app/app/router.dart';
import 'package:weather_app/app/services/errors.dart';
import 'package:weather_app/pages/weather_dashboard/models.dart';
import 'package:weather_app/pages/weather_dashboard/use_case.dart';

part 'weather_dashboard_event.dart';
part 'weather_dashboard_state.dart';

class WeatherDashboardBloc extends PageBloc<WeatherDashboardEvent, WeatherDashboardState> {
  final WeatherDashboardUseCase _useCase;
  final ErrorsService _errorsService;
  final AppRouter _router;

  WeatherDashboardBloc(
    this._useCase,
    this._errorsService,
    this._router,
  ) : super(WeatherDashboardInitial()) {
    on<OnLoad>(_onLoad);
    on<OnRefresh>(_onRefresh);
    on<OnSelectCityClick>(_onSelectCityClick);
    on<OnSearchClick>(_onSearchClick);
  }

  Future<void> _onLoad(OnLoad event, Emitter<WeatherDashboardState> emit) async {
    try {
      emit(LoadingState());
      final data = await _useCase.getDashboardData(refresh: true);
      emit(LoadedState(data: data, isNoConnection: false));
    } on ConnectionException catch (_) {
      final data = await _useCase.getDashboardData();
      emit(LoadedState(data: data, isNoConnection: true));
    } catch (e, s) {
      emit(LoadingErrorState(AppError(e, s)));
      await reportError(e, s);
      _errorsService.pushError(e, s);
    }
  }

  Future<void> _onRefresh(OnRefresh event, Emitter<WeatherDashboardState> emit) async {
    try {
      final data = await _useCase.getDashboardData(refresh: true);
      event.completer.complete();
      emit(LoadedState(data: data, isNoConnection: false));
    } on ConnectionException catch (_) {
      final data = await _useCase.getDashboardData();
      event.completer.complete();
      emit(LoadedState(data: data, isNoConnection: true));
    } catch (e, s) {
      emit(LoadingErrorState(AppError(e, s)));
      await reportError(e, s);
      _errorsService.pushError(e, s);
    }
  }

  Future<void> _onSelectCityClick(
    OnSelectCityClick event,
    Emitter<WeatherDashboardState> emit,
  ) async {
    assert(state is LoadedState);
    try {
      await _useCase.selectCityId(event.id);
      final data = await _useCase.getDashboardData();
      emit(LoadedState(data: data, isNoConnection: false));
    } catch (e, s) {
      emit(LoadingErrorState(AppError(e, s)));
      await reportError(e, s);
      _errorsService.pushError(e, s);
    }
  }

  Future<void> _onSearchClick(OnSearchClick event, Emitter<WeatherDashboardState> emit) async {
    assert(state is LoadedState);
    await _router.search.openSearchPage();
  }
}
