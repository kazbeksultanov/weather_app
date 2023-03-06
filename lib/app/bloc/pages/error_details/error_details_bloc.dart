import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drivers/bloc.dart';
import 'package:drivers/models/app_error.dart';
import 'package:localization/strings.dart';
import 'package:weather_app/app/services/copy.dart';
import 'package:weather_app/app/ui_services/notifications/toast.dart';

part 'error_details_event.dart';
part 'error_details_state.dart';

class ErrorDetailsBloc extends PageBloc<ErrorDetailsEvent, ErrorDetailsState> {
  final AppError _error;
  final ToastNotifications _toastNotifications;
  final CopyUIService _copyService;

  ErrorDetailsBloc(
    this._error,
    this._toastNotifications,
    this._copyService,
  ) : super(const ErrorDetailsState()) {
    on<OnCopyClick>(_onCopyClick);
  }

  Future<void> _onCopyClick(OnCopyClick event, Emitter<ErrorDetailsState> emit) async {
    await _copyService.copyLocalizedFactory(_error.getReportWithStackTrace);
    final message = AppStrings.string((s) => s.successfullyCopied);
    await _toastNotifications.showLocalized(message);
  }
}
