import 'package:drivers/log.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/pages/search/ui.dart';

class SearchRouter {
  final BuildContext? _context;

  SearchRouter(this._context);

  NavigatorState get _navigator => Navigator.of(_context!);

  Future<void> openSearchPage() async {
    log('ROUTE', '$SearchPage');
    return _navigator.push<void>(SearchPage.route());
  }
}
