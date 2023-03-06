import 'package:drivers/dependencies.dart';
import 'package:drivers/models/app_error.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:weather_app/app/router.dart';
import 'package:weather_app/app/ui/kit/components/popups/error_toast.dart';
import 'package:weather_app/app/ui_services/notifications/errors.dart';

class ErrorsNotificationsFlutterToastUIService implements ErrorsNotificationsUIService {
  OverlaySupportEntry? _overlayEntry;

  @override
  void dismissLastError() {
    _overlayEntry?.dismiss(animate: false);
  }

  @override
  void removeLastError() {
    _overlayEntry?.dismiss(animate: true);
  }

  @override
  void showError(AppError error) {
    removeLastError();
    _overlayEntry = showOverlayNotification(
      (_) => AppErrorToast(
        error,
        tag: 'toast_notification',
        onErrorDetailsClick: () async {
          dismissLastError();
          await resolveDependency<AppRouter>().openErrorDetails(error);
        },
        onClosePressed: () => _overlayEntry?.dismiss(animate: true),
        onDismiss: () => _overlayEntry?.dismiss(animate: false),
      ),
      duration: kToastDuration,
      key: ModalKey('toast_notification'),
    );
  }
}
