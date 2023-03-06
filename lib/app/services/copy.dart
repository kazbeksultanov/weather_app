import 'package:flutter/widgets.dart';
import 'package:localized_string/localized_string.dart';

abstract class CopyUIService {
  Future<void> copy(String text);

  Future<void> copyLocalizedFactory(String Function(BuildContext) text);

  Future<void> copyLocalizedString(LocalizedString text);
}
