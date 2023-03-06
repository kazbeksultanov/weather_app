import 'package:drivers/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:localized_string/localized_string.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:weather_app/app/ui/kit/components/popups/toast.dart';
import 'package:weather_app/app/ui_services/notifications/toast.dart';

class ToastNotificationsFlutterToast implements ToastNotifications {
  BuildContext get _context => getCurrentContext;

  OverlaySupportEntry? _overlayEntry;

  @override
  Future<void> show(String message) async {
    _overlayEntry?.dismiss(animate: true);
    _overlayEntry = showOverlayNotification(
      (_) => AppToast(
        message,
        tag: 'toast_notification',
        onClosePressed: () => _overlayEntry?.dismiss(animate: true),
        onDismiss: () => _overlayEntry?.dismiss(animate: false),
      ),
      duration: kToastDuration,
      key: ModalKey('toast_notification'),
    );
  }

  @override
  Future<void> showLocalized(LocalizedString message) {
    return show(message.localize(_context));
  }
}
