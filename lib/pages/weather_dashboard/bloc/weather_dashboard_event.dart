part of 'weather_dashboard_bloc.dart';

@immutable
abstract class WeatherDashboardEvent extends PageEvent {}

class OnLoad extends WeatherDashboardEvent {
  @override
  List<Object?> get props => [];
}

class OnRefresh extends WeatherDashboardEvent {
  final Completer<void> completer;

  OnRefresh(this.completer);

  @override
  List<Object> get props => [completer];
}

class OnSelectCityClick extends WeatherDashboardEvent {
  final int id;

  OnSelectCityClick(this.id);

  @override
  List<Object?> get props => [id];
}

class OnSearchClick extends WeatherDashboardEvent {
  @override
  List<Object?> get props => [];
}
