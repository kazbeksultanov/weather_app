import 'package:weather_app/app/storages/storage.dart';
import 'package:weather_app/layers/services/storages/impl/saved_city_hive.dart';
import 'package:weather_app/layers/services/weather_api_cache.dart';
import 'package:weather_app/pages/weather_dashboard/models.dart';
import 'package:weather_app/pages/weather_dashboard/use_case.dart';

import '../../layers/services/schemes.dart';

class WeatherDashboardUseCaseImpl implements WeatherDashboardUseCase {
  final StorageService<SavedCityInfo> _storageService;
  final SingleStorageService<SelectedCityId> _singleStorageService;
  final WeatherApiCache _weatherApiCache;

  WeatherDashboardUseCaseImpl(
    this._storageService,
    this._singleStorageService,
    this._weatherApiCache,
  );

  @override
  Future<WeatherDashboardData> getDashboardData({bool refresh = false}) async {
    final cache = await _weatherApiCache.getCachedData(refresh: refresh);
    final savedCityData = await _storageService.readAll();

    SelectedCityId? selectedId = await _singleStorageService.read();
    final cities = <CityWeatherInfo>[];

    for (final resp in cache.forecasts) {
      if (selectedId == null) {
        await _singleStorageService.write(SelectedCityId(id: resp.id!));
        selectedId = await _singleStorageService.read();
      }
      final savedCity = savedCityData.firstWhere(
        (e) => resp.id != null && e.id == resp.id.toString(),
      );
      cities.add(CityWeatherInfo.fromCurrentWeather(
        currentWeather: resp.currentWeather,
        savedCityInfo: savedCity,
        id: resp.id!,
        selectedCityId: selectedId!.id,
      ));
    }
    CityWeatherInfo? selectedCity;
    if (selectedId != null) {
      selectedCity = cities.firstWhere((e) => e.id == selectedId!.id);
    }

    return WeatherDashboardData(
      cities: cities,
      selectedCity: selectedCity,
    );
  }

  @override
  Future<void> selectCityId(int id) async {
    await _singleStorageService.write(SelectedCityId(id: id));
  }
}
