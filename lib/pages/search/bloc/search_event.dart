part of 'search_bloc.dart';

@immutable
abstract class SearchEvent extends PageEvent {}

class OnEnterName extends SearchEvent {
  final String value;

  OnEnterName(this.value);

  @override
  List<Object?> get props => [value];
}

class OnAddCityClick extends SearchEvent {
  final CityData cityData;

  OnAddCityClick(this.cityData);

  @override
  List<Object?> get props => [cityData];
}

class OnSearchSubmit extends SearchEvent {
  final String name;

  OnSearchSubmit(this.name);

  @override
  List<Object?> get props => [name];
}
