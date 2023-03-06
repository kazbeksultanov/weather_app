import 'package:weather_app/app/app.dart';
import 'package:weather_app/app/configs.dart';
import 'package:weather_app/pages/weather_dashboard/ui.dart';

Future<void> main() async {
  await bootstrapApp(
    config: AppConfigs.release.dataClass,
    app: () => WeatherApp(
      home: WeatherDashboardPageProvider(),
    ),
  );
}
