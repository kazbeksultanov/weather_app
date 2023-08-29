import 'dart:async';

import 'package:drivers/dependencies.dart';
import 'package:drivers/exceptions/common.dart';
import 'package:drivers/log.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:localization/generated/l10n.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:weather_app/app/bloc/app/bloc.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/dependencies.dart';
import 'package:weather_app/app/report.dart';
import 'package:weather_app/app/services/errors.dart';
import 'package:weather_app/app/ui/colors.dart';
import 'package:weather_app/app/ui/themes.dart';
import 'package:weather_app/app/ui_services/impl/debug_float_panel.dart';
import 'package:weather_app/firebase_options.dart';
import 'package:weather_app/layers/services/storages/impl/saved_city_hive.dart';

Future<void> bootstrapApp({
  required AppConfig config,
  required WeatherApp Function() app,
}) async {
  await setupLauncherDependencies(config);
  WidgetsFlutterBinding.ensureInitialized();
  await setUpApp();
  Bloc.observer = AppBlocObserver();
  runApp(app());
}

Future<void> setUpApp() async {
  final config = resolveDependency<AppConfig>();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (config.configs.reportCrashesEnabled) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  }

  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(SavedCityInfoAdapter().typeId)) {
    Hive.registerAdapter(SavedCityInfoAdapter());
  }

  await setupDependencies();
}

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('${bloc.runtimeType} => Event: ${event.toString()}');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint(
        '${bloc.runtimeType} => Transition:\n  ->  currentState: ${transition.currentState}, \n  ->  event: ${transition.event}, \n  ->  nextState: ${transition.nextState}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    GetIt.instance<ErrorsService>().pushError(error, stackTrace);
    debugPrint(error.toString());
    debugPrint(stackTrace.toString());
  }
}

class WeatherApp extends StatefulWidget {
  final Widget home;

  const WeatherApp({
    required this.home,
    Key? key,
  }) : super(key: key);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

final _appKey = GlobalKey();

final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

class _WeatherAppState extends State<WeatherApp> {
  final _key = ErrorHandlerKey();
  late AppBloc _appBloc;
  final _errorService = resolveDependency<ErrorsService>();
  final _navigator = GlobalKey<NavigatorState>();

  @override
  void initState() {
    _errorService.registerErrorHandler(
      _key,
      (e, stackTrace) {
        debugPrint(e.toString());
        debugPrint(stackTrace.toString());

        _appBloc.add(OnError(e, stackTrace));

        if (e is! LogicException) {
          reportError(e, stackTrace);
        }

        return false;
      },
    );
    final config = resolveDependency<AppConfig>();
    log('App started', config.configs.toJson());

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final config = resolveDependency<AppConfig>();

    pushGlobalKeyNavigatorState(_navigator);

    _appBloc = AppBloc(DebugFloatPanelUIServiceImpl(), config);

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (mounted) {
          _appBloc.add(
            OnSetEnabledDebugServices(isEnabled: config.configs.debugServicesEnabled),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _errorService.unregisterErrorHandler(_key);
    _appBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return BlocProvider<AppBloc>.value(
      value: _appBloc,
      child: BlocBuilder<AppBloc, AppState>(
        bloc: _appBloc,
        builder: (context, state) {
          SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle(
              statusBarBrightness: state.colorScheme.brightness,
            ),
          );
          return AppConfigInherited(
            config: state.appConfig,
            child: AppColorScheme(
              state.colorScheme,
              child: OverlaySupport.global(
                child: MaterialApp(
                  key: _appKey,
                  navigatorKey: _navigator,
                  navigatorObservers: [routeObserver],
                  localizationsDelegates: const [
                    AppString.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: AppString.delegate.supportedLocales,
                  theme: AppThemes.materialAppTheme(state.colorScheme),
                  home: widget.home,
                  debugShowCheckedModeBanner: false,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
