import 'package:weather_app/pages/search/models.dart';

abstract class SearchUseCase {
  Future<List<CityData>> searchCities(String value);

  Future<void> addCity(CityData data);

  Future<bool> contains(int id);
}
