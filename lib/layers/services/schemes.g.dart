// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schemes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchCitiesResponse _$$_SearchCitiesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchCitiesResponse(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => SearchCitiesItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchCitiesResponseToJson(
        _$_SearchCitiesResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_SearchCitiesItem _$$_SearchCitiesItemFromJson(Map<String, dynamic> json) =>
    _$_SearchCitiesItem(
      country: json['country'] as String?,
      countryCode: json['country_code'] as String?,
      id: json['id'] as int,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      name: json['name'] as String,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$_SearchCitiesItemToJson(_$_SearchCitiesItem instance) =>
    <String, dynamic>{
      'country': instance.country,
      'country_code': instance.countryCode,
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'name': instance.name,
      'timezone': instance.timezone,
    };

_$_ForecastResponse _$$_ForecastResponseFromJson(Map<String, dynamic> json) =>
    _$_ForecastResponse(
      currentWeather: CurrentWeather.fromJson(
          json['current_weather'] as Map<String, dynamic>),
      timezone: json['timezone'] as String,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_ForecastResponseToJson(_$_ForecastResponse instance) =>
    <String, dynamic>{
      'current_weather': instance.currentWeather,
      'timezone': instance.timezone,
      'id': instance.id,
    };

_$_CurrentWeather _$$_CurrentWeatherFromJson(Map<String, dynamic> json) =>
    _$_CurrentWeather(
      temperature: (json['temperature'] as num).toDouble(),
      time: json['time'] as String,
      weathercode: json['weathercode'] as int,
      winddirection: (json['winddirection'] as num).toDouble(),
      windspeed: (json['windspeed'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CurrentWeatherToJson(_$_CurrentWeather instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'time': instance.time,
      'weathercode': instance.weathercode,
      'winddirection': instance.winddirection,
      'windspeed': instance.windspeed,
    };

_$_SelectedCityId _$$_SelectedCityIdFromJson(Map<String, dynamic> json) =>
    _$_SelectedCityId(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_SelectedCityIdToJson(_$_SelectedCityId instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_WeatherApiCacheData _$$_WeatherApiCacheDataFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherApiCacheData(
      lastUpdateDate: json['last_update_date'] as String,
      forecasts: (json['forecasts'] as List<dynamic>)
          .map((e) => ForecastResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherApiCacheDataToJson(
        _$_WeatherApiCacheData instance) =>
    <String, dynamic>{
      'last_update_date': instance.lastUpdateDate,
      'forecasts': instance.forecasts,
    };
