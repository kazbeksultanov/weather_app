import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather_app/pages/search/models.dart';

part 'saved_city_hive.g.dart';

@HiveType(typeId: 0)
class SavedCityInfo with EquatableMixin {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String city;

  @HiveField(2)
  final String country;
  @HiveField(3)
  final String countryCode;
  @HiveField(4)
  final String? timezone;
  @HiveField(5)
  final double lat;
  @HiveField(6)
  final double long;

  SavedCityInfo({
    required this.id,
    required this.city,
    required this.country,
    required this.countryCode,
    required this.timezone,
    required this.lat,
    required this.long,
  });

  SavedCityInfo copyWith({
    String? id,
    String? city,
    String? country,
    String? countryCode,
    String? timezone,
    double? lat,
    double? long,
  }) =>
      SavedCityInfo(
        id: id ?? this.id,
        city: city ?? this.city,
        country: country ?? this.country,
        countryCode: countryCode ?? this.countryCode,
        timezone: timezone ?? this.timezone,
        lat: lat ?? this.lat,
        long: long ?? this.long,
      );

  @override
  List<Object?> get props => [id, city, country, countryCode, timezone, lat, long];

  static SavedCityInfo fromCityData(CityData data) {
    return SavedCityInfo(
      id: data.id.toString(),
      city: data.city,
      country: data.country,
      countryCode: data.countryCode,
      timezone: data.timezone,
      lat: data.lat,
      long: data.long,
    );
  }
}
