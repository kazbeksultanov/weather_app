import 'package:get_it/get_it.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/storages/storage.dart';
import 'package:weather_app/layers/services/schemes.dart';
import 'package:weather_app/layers/services/storages/impl/cache_storage.dart';
import 'package:weather_app/layers/services/storages/impl/saved_city_hive.dart';
import 'package:weather_app/layers/services/storages/impl/saved_city_info.dart';

import '../services/storages/impl/saved_selected_city.dart';

Future<void> setupStoragesDependencies(ConfigSpec config) async {
  final sl = GetIt.instance;

  sl.registerSingleton<StorageService<SavedCityInfo>>(SavedCityInfoStorage());

  sl.registerSingleton<SingleStorageService<SelectedCityId>>(SelectedCityIdStorage());

  sl.registerSingleton<SingleStorageService<WeatherApiCacheData>>(WeatherApiCacheStorage());
}
