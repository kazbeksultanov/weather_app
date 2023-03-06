import 'package:drivers/async.dart';
import 'package:flutter/widgets.dart';
import 'package:forms/bloc.dart';
import 'package:forms/data.dart';
import 'package:localized_string/localized_string.dart';
import 'package:weather_app/app/ui_services/forms_service.dart';

// NOTE(sysint64): We use delay(100) to avoid fast changing of states.
//   for more details: https://github.com/felangel/bloc/issues/173
class FormsServiceImpl implements FormsService {
  final GlobalKey key;

  const FormsServiceImpl(this.key);

  FormsBloc get bloc => form(key.currentContext!);

  @override
  Future<void> rewriteValue<T>({
    required String fieldName,
    required FormValue<T> newValue,
  }) async {
    await delay(50);
    bloc.add(OnRewriteValue(fieldName, newValue));
    await delay(100);
  }

  @override
  Future<void> setFieldError({
    required String fieldName,
    LocalizedString? error,
    bool requestFocus = true,
  }) async {
    await delay(50);
    bloc.add(OnFieldError(fieldName, error!, requestFocus: requestFocus));
    await delay(100);
  }

  @override
  Future<void> validateField({
    required String fieldName,
    List<String> tags = const ['main'],
    bool requestFocusOnError = true,
  }) async {
    await delay(50);
    bloc.add(
      OnValidateField(
        fieldName: fieldName,
        tags: tags,
        requestFocusOnError: requestFocusOnError,
      ),
    );
    await delay(100);
  }

  @override
  Future<void> focusField({required String fieldName}) async {
    await delay(50);
    bloc.add(OnFieldFocus(fieldName));
    await delay(100);
  }
}
