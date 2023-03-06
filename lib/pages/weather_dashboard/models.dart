import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/layers/services/schemes.dart';
import 'package:weather_app/layers/services/storages/impl/saved_city_hive.dart';

class WeatherDashboardData extends Equatable {
  final List<CityWeatherInfo> cities;
  final CityWeatherInfo? selectedCity;

  const WeatherDashboardData({
    required this.cities,
    this.selectedCity,
  });

  @override
  List<Object?> get props => [cities];
}

class CityWeatherInfo extends Equatable {
  final int id;
  final String time;
  final String temperature;
  final String city;
  final String country;
  final String countryCode;
  final bool isSelected;

  const CityWeatherInfo({
    required this.id,
    required this.time,
    required this.temperature,
    required this.city,
    required this.country,
    required this.countryCode,
    required this.isSelected,
  });

  static CityWeatherInfo fromCurrentWeather({
    required CurrentWeather currentWeather,
    required SavedCityInfo savedCityInfo,
    required int id,
    required int selectedCityId,
  }) {
    final cW = currentWeather;
    final sign = cW.temperature >= 0 ? '+' : '';
    return CityWeatherInfo(
      id: id,
      time: DateFormat('hh:mm').format(DateTime.parse(cW.time)),
      temperature: '$sign${cW.temperature}°',
      city: savedCityInfo.city,
      country: savedCityInfo.country,
      countryCode: savedCityInfo.countryCode,
      isSelected: id == selectedCityId,
    );
  }

  @override
  List<Object?> get props => [time, temperature, city, country, countryCode, isSelected];
}
