import 'package:drivers/dependencies.dart';
import 'package:drivers/transactions/transactions_manager.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/app/dependencies.dart';
import 'package:weather_app/app/services/clean_up.dart';
import 'package:weather_app/app/services/debug.dart';
import 'package:weather_app/app/use_cases/launcher.dart';

class LauncherUseCaseImpl implements LauncherUseCase {
  final DebugConfigService _debugService;
  final TransactionsManager Function() _transactionsManagerFactory;

  TransactionsManager get _transactionsManager => _transactionsManagerFactory();

  LauncherUseCaseImpl(
    this._debugService,
    this._transactionsManagerFactory,
  );

  @override
  Future<void> setUp() async {
    await setUpApp();
    await _debugService.retrieveConfig();
    await setupDependencies();

    await resolveDependency<CleanUpService>().cleanAll();
    await _transactionsManager.recoveryState();
  }

  @override
  Future<bool> isSessionCanBeLoaded() async {
    return true;
  }
}
