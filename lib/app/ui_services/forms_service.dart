import 'package:forms/data.dart';
import 'package:localized_string/localized_string.dart';

abstract class FormsService {
  Future<void> rewriteValue<T>({
    required String fieldName,
    required FormValue<T> newValue,
  });

  Future<void> validateField({
    required String fieldName,
    List<String> tags = const ['main'],
    bool requestFocusOnError = true,
  });

  Future<void> setFieldError({
    required String fieldName,
    required LocalizedString? error,
    bool requestFocus = true,
  });

  Future<void> focusField({
    required String fieldName,
  });
}
