import 'package:drivers/dependencies.dart';
import 'package:drivers/log.dart';
import 'package:drivers/models/app_error.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/app/bloc/error_details.dart';
import 'package:weather_app/pages/search/router.dart';
import 'package:weather_app/pages/weather_dashboard/router.dart';

class AppRouter {
  BuildContext get _context => getCurrentContext;

  NavigatorState get _navigator => Navigator.of(_context);

  WeatherDashboardRouter get weatherDashboard => WeatherDashboardRouter(_context);

  SearchRouter get search => SearchRouter(_context);

  void clearStack() => _navigator.popUntil((_) => false);

  void pop<T>([T? result]) => _navigator.pop(result);

  Future<void> openErrorDetails(AppError error) {
    log('ROUTE', '$ErrorDetailsPage');
    return _navigator.push(ErrorDetailsPage.route(error));
  }
}
