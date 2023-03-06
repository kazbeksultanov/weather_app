import 'package:drivers/dependencies.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/pages/search/use_case.dart';
import 'package:weather_app/pages/search/use_case_impl.dart';
import 'package:weather_app/pages/weather_dashboard/use_case.dart';
import 'package:weather_app/pages/weather_dashboard/use_case_impl.dart';

Future<void> setupUseCasesDependencies(ConfigSpec config) async {
  final sl = GetIt.instance;

  sl.registerFactory<WeatherDashboardUseCase>(
    () => WeatherDashboardUseCaseImpl(
      resolveDependency(),
      resolveDependency(),
      resolveDependency(),
    ),
  );
  sl.registerFactory<SearchUseCase>(
    () => SearchUseCaseImpl(
      resolveDependency(),
      resolveDependency(),
    ),
  );
}
