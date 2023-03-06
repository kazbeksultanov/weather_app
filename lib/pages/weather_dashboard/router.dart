import 'package:drivers/log.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/pages/weather_dashboard/ui.dart';

class WeatherDashboardRouter {
  final BuildContext? _context;

  WeatherDashboardRouter(this._context);

  NavigatorState get _navigator => Navigator.of(_context!);

  Future<void> closeAllOpenWeatherDashboard({VoidCallback? onOpen}) async {
    log('ROUTE', '$WeatherDashboardPage');
    return _navigator.pushAndRemoveUntil<void>(
      WeatherDashboardPage.route(onOpen: onOpen),
      (route) => false,
    );
  }
}
