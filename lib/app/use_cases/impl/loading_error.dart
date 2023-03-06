import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:drivers/exceptions/network.dart';
import 'package:drivers/models/app_error.dart';
import 'package:drivers/online_connection_check.dart';
import 'package:weather_app/app/use_cases/loading_error.dart';

class LoadingErrorUseCaseImpl extends LoadingErrorUseCase {
  final OnlineConnectionChecker _onlineConnectionChecker;
  StreamSubscription<ConnectivityResult>? _streamSubscription;

  LoadingErrorUseCaseImpl(this._onlineConnectionChecker);

  @override
  void initConnectionObserver(AppError error, Function() onRetry) {
    if (error.e is NoInternetException) {
      _streamSubscription = Connectivity().onConnectivityChanged.listen((result) async {
        if (result != ConnectivityResult.none) {
          final isDeviceConnected = await _onlineConnectionChecker.hasGeneralConnection;
          if (isDeviceConnected) {
            onRetry();
          }
        }
      });
    }
  }

  @override
  void disposeConnectionObserver() {
    _streamSubscription?.cancel();
  }
}
