import 'package:weather_app/pages/weather_dashboard/models.dart';

abstract class WeatherDashboardUseCase {
  Future<WeatherDashboardData> getDashboardData({bool refresh = false});

  Future<void> selectCityId(int id);
}
