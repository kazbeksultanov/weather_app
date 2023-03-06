import 'package:flutter/widgets.dart';
import 'package:localization/generated/l10n.dart';
import 'package:localized_string/localized_string.dart';

class AppStrings extends AppString {
  static LocalizedString string(String Function(AppString s) factory) =>
      LocalizedString.fromFactory((context) => factory(AppString.of(context)));

  static AppString of(BuildContext context) {
    return Localizations.of<AppString>(context, AppString)!;
  }

  static Future<AppString> load(Locale locale) async {
    return AppString.load(locale);
  }
}
