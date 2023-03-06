import 'package:drivers/models/app_error.dart';

abstract class LoadingErrorUseCase {
  void initConnectionObserver(AppError error, Function() onRetry);

  void disposeConnectionObserver();
}
