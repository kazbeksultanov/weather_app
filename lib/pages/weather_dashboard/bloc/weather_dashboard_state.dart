part of 'weather_dashboard_bloc.dart';

@immutable
abstract class WeatherDashboardState extends PageState {}

class WeatherDashboardInitial extends WeatherDashboardState {
  @override
  List<Object?> get props => [];
}

class LoadingState extends WeatherDashboardState {
  @override
  List<Object?> get props => [];
}

class LoadingErrorState extends WeatherDashboardState {
  final AppError error;

  LoadingErrorState(this.error);

  @override
  List<Object> get props => [error];
}

class LoadedState extends WeatherDashboardState {
  final WeatherDashboardData data;
  final bool isNoConnection;

  LoadedState({
    required this.data,
    required this.isNoConnection,
  });

  @override
  List<Object?> get props => [data, isNoConnection];
}
