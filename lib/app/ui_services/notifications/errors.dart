import 'package:drivers/models/app_error.dart';

abstract class ErrorsNotificationsUIService {
  void showError(AppError error);

  /// Change state of error to dismissed, can be used to show the animation.
  void dismissLastError();

  /// Just remove error.
  void removeLastError();
}
