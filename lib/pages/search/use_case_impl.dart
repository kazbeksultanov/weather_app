import 'package:weather_app/app/storages/storage.dart';
import 'package:weather_app/layers/services/gateway_geo_coding.dart';
import 'package:weather_app/layers/services/storages/impl/saved_city_hive.dart';
import 'package:weather_app/pages/search/models.dart';
import 'package:weather_app/pages/search/use_case.dart';

class SearchUseCaseImpl implements SearchUseCase {
  final GeoCodingApiGateway _geoCodingApiGateway;
  final StorageService<SavedCityInfo> _storageService;

  SearchUseCaseImpl(
    this._geoCodingApiGateway,
    this._storageService,
  );

  @override
  Future<List<CityData>> searchCities(String value) async {
    final resp = await _geoCodingApiGateway.getSearchCities(name: value);
    final results = resp.results;
    final cityList = <CityData>[];
    if (results != null) {
      for (final e in results) {
        if (e.country != null && e.countryCode != null) {
          cityList.add(CityData.fromSearchCitiesItem(e, isInAddedList: await contains(e.id)));
        }
      }
    }
    return cityList;
  }

  @override
  Future<void> addCity(CityData data) async {
    await _storageService.write(data.id.toString(), SavedCityInfo.fromCityData(data));
  }

  @override
  Future<bool> contains(int id) {
    return _storageService.contains(id.toString());
  }
}
