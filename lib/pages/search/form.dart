import 'package:flutter/material.dart';
import 'package:weather_app/app/ui_services/forms_service.dart';
import 'package:weather_app/app/ui_services/impl/forms_service.dart';

class SearchNameForm {
  static final _key = GlobalKey();

  static const nameFieldName = 'name';

  GlobalKey get key => _key;

  final FormsService service = FormsServiceImpl(_key);
}
