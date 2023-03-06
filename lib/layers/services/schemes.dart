import 'package:freezed_annotation/freezed_annotation.dart';

part 'schemes.freezed.dart';
part 'schemes.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SearchCitiesResponse with _$SearchCitiesResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SearchCitiesResponse({
    required final List<SearchCitiesItem>? results,
  }) = _SearchCitiesResponse;

  factory SearchCitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchCitiesResponseFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class SearchCitiesItem with _$SearchCitiesItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SearchCitiesItem({
    required final String? country,
    required final String? countryCode,
    required final int id,
    required final double latitude,
    required final double longitude,
    required final String name,
    required final String? timezone,
  }) = _SearchCitiesItem;

  factory SearchCitiesItem.fromJson(Map<String, dynamic> json) => _$SearchCitiesItemFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class ForecastResponse with _$ForecastResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ForecastResponse({
    required final CurrentWeather currentWeather,
    required final String timezone,
    required final int? id,
  }) = _ForecastResponse;

  factory ForecastResponse.fromJson(Map<String, dynamic> json) => _$ForecastResponseFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class CurrentWeather with _$CurrentWeather {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CurrentWeather({
    required final double temperature,
    required final String time,
    required final int weathercode,
    required final double winddirection,
    required final double windspeed,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) => _$CurrentWeatherFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class SelectedCityId with _$SelectedCityId {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SelectedCityId({
    required final int id,
  }) = _SelectedCityId;

  factory SelectedCityId.fromJson(Map<String, dynamic> json) => _$SelectedCityIdFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class WeatherApiCacheData with _$WeatherApiCacheData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WeatherApiCacheData({
    required final String lastUpdateDate,
    required final List<ForecastResponse> forecasts,
  }) = _WeatherApiCacheData;

  factory WeatherApiCacheData.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiCacheDataFromJson(json);
}
