import 'package:equatable/equatable.dart';
import 'package:weather_app/layers/services/schemes.dart';

class CityData extends Equatable {
  final int id;
  final String city;
  final String country;
  final String countryCode;
  final String? timezone;
  final double lat;
  final double long;
  final bool isInAddedList;

  const CityData({
    required this.id,
    required this.city,
    required this.country,
    required this.countryCode,
    required this.timezone,
    required this.lat,
    required this.long,
    required this.isInAddedList,
  });

  static CityData fromSearchCitiesItem(SearchCitiesItem e, {required bool isInAddedList}) {
    return CityData(
      id: e.id,
      city: e.name,
      country: e.country!,
      countryCode: e.countryCode!,
      lat: e.latitude,
      long: e.longitude,
      timezone: e.timezone,
      isInAddedList: isInAddedList,
    );
  }

  @override
  List<Object?> get props => [id, city, country, countryCode, timezone, lat, long, isInAddedList];
}
