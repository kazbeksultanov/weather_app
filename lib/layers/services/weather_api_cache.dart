import 'package:weather_app/layers/services/schemes.dart';

abstract class WeatherApiCache {
  Future<WeatherApiCacheData> getCachedData({bool refresh = false});
}
