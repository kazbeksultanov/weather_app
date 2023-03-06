import 'package:weather_app/app/storages/storage.dart';
import 'package:weather_app/layers/services/gateway_weather.dart';
import 'package:weather_app/layers/services/schemes.dart';
import 'package:weather_app/layers/services/storages/impl/saved_city_hive.dart';
import 'package:weather_app/layers/services/weather_api_cache.dart';

class WeatherApiCacheImpl implements WeatherApiCache {
  final WeatherApiGateway _weatherApiGateway;
  final StorageService<SavedCityInfo> _savedCityInfoStorage;
  final SingleStorageService<WeatherApiCacheData> _weatherApiCacheStorage;

  WeatherApiCacheImpl(
    this._weatherApiGateway,
    this._savedCityInfoStorage,
    this._weatherApiCacheStorage,
  );

  @override
  Future<WeatherApiCacheData> getCachedData({bool refresh = false}) async {
    if (await _weatherApiCacheStorage.contains() && !refresh) {
      return (await _weatherApiCacheStorage.read())!;
    }
    return _refreshData();
  }

  Future<WeatherApiCacheData> _refreshData() async {
    final savedCityData = await _savedCityInfoStorage.readAll();

    final futures = Future.wait([
      for (final e in savedCityData)
        _weatherApiGateway.getForecast(
          id: int.parse(e.id),
          latitude: e.lat,
          longitude: e.long,
        ),
    ]);

    final cache = WeatherApiCacheData(
      forecasts: await futures,
      lastUpdateDate: DateTime.now().toString(),
    );
    await _weatherApiCacheStorage.write(cache);
    return cache;
  }
}
