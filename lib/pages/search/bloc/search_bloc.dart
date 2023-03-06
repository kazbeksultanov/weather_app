import 'package:drivers/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/app/report.dart';
import 'package:weather_app/app/services/errors.dart';
import 'package:weather_app/pages/search/models.dart';
import 'package:weather_app/pages/search/use_case.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends PageBloc<SearchEvent, SearchState> {
  final SearchUseCase _useCase;
  final ErrorsService _errorsService;

  SearchBloc(
    this._useCase,
    this._errorsService,
  ) : super(SearchInitial(
          isLoading: false,
          searchedName: '',
          listCity: const [],
        )) {
    on<OnEnterName>(_onEnterName);
    on<OnAddCityClick>(_onAddCityClick);
  }

  Future<void> _onEnterName(OnEnterName event, Emitter<SearchState> emit) async {
    final currentState = state as SearchInitial;
    try {
      emit(SearchInitial(
        isLoading: true,
        searchedName: event.value,
        listCity: currentState.listCity,
      ));
      if (event.value.length > 2) {
        final data = await _useCase.searchCities(event.value);
        emit(SearchInitial(
          isLoading: true,
          searchedName: event.value,
          listCity: data,
        ));
      }
    } catch (e, s) {
      await reportError(e, s);
      _errorsService.pushError(e, s);
    }
  }

  Future<void> _onAddCityClick(OnAddCityClick event, Emitter<SearchState> emit) async {
    final currentState = state as SearchInitial;
    try {
      await _useCase.addCity(event.cityData);
      add(OnEnterName(currentState.searchedName));
    } catch (e, s) {
      await reportError(e, s);
      _errorsService.pushError(e, s);
    }
  }
}
