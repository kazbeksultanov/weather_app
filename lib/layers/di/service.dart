import 'package:drivers/dependencies.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/services/clean_up.dart';
import 'package:weather_app/app/services/impl/clean_up.dart';
import 'package:weather_app/layers/services/impl/weather_api_cache_impl.dart';
import 'package:weather_app/layers/services/weather_api_cache.dart';

Future<void> setupServiceDependencies(ConfigSpec config) async {
  final sl = GetIt.instance;

  sl.registerFactory<CleanUpService>(
    () => CleanUpServiceImpl(),
  );
  sl.registerFactory<WeatherApiCache>(
    () => WeatherApiCacheImpl(
      resolveDependency(),
      resolveDependency(),
      resolveDependency(),
    ),
  );
}
