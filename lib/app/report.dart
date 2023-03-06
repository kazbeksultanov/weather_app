import 'package:drivers/dependencies.dart';
import 'package:drivers/log.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/app/config.dart';

Future<void> reportError(Object e, StackTrace stackTrace) async {
  final appConfig = resolveDependency<AppConfig>();

  debugPrint('REPORT EXCEPTION: $e');
  debugPrint(stackTrace.toString());

  if (appConfig.configs.reportCrashesEnabled) {
    try {
      await FirebaseCrashlytics.instance.recordError(e, stackTrace);
      log('report', 'Reported to FirebaseCrashlytics');
    } catch (e, s) {
      log('report', 'Failed to report \n$e\n$s');
    }
  } else {
    final report = 'GIT REVISION: \n\n'
        'ERROR: $e\n\n'
        'STACK TRACE:\n$stackTrace';

    await Clipboard.setData(ClipboardData(text: report));
  }
}
