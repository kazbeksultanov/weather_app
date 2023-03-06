import 'package:localized_string/localized_string.dart';

abstract class ToastNotifications {
  Future<void> showLocalized(LocalizedString message);

  Future<void> show(String message);
}
