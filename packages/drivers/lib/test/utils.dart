import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

Future<Finder> pumpUntilFound(
  WidgetTester tester, {
  Finder? finder,
  Key? key,
  String? text,
  Duration timeout = const Duration(seconds: 30),
}) async {
  final realFinder = _assertAndSet(finder: finder, key: key, text: text);
  bool timerDone = false;
  final timer = Timer(
    timeout,
    () =>
        throw TimeoutException('Pump until has timed out => finder:$finder, key:$key, text:$text'),
  );
  while (timerDone != true) {
    await tester.pump(const Duration(milliseconds: 200));

    final found = tester.any(realFinder);
    if (found) {
      timerDone = true;
      debugPrint('pumpUntilFound -> found:$found finder:$finder, key:$key, text:$text');
    }
  }
  timer.cancel();
  return realFinder;
}

Future<void> findAndWriteText(
  WidgetTester tester, {
  required String textToWrite,
  Finder? finder,
  Key? key,
  String? text,
}) async {
  final realFinder = _assertAndSet(finder: finder, key: key, text: text);
  await pumpUntilFound(tester, finder: realFinder);
  await tester.enterText(realFinder, textToWrite);
  await tester.testTextInput.receiveAction(TextInputAction.done);
  await tester.pump();
  await tester.pumpAndSettle();
  await tester.pump(const Duration(milliseconds: 500));
}

Future<void> findAndTap(
  WidgetTester tester, {
  Finder? finder,
  Key? key,
  String? text,
}) async {
  final realFinder = _assertAndSet(finder: finder, key: key, text: text);
  await pumpUntilFound(tester, finder: realFinder);
  await tester.tap(realFinder);
  await tester.pumpAndSettle();
}

Finder _assertAndSet({
  Finder? finder,
  Key? key,
  String? text,
}) {
  assert(key != null || text != null || finder != null, 'At least one should be given');
  Finder? realFinder;
  if (finder != null) {
    realFinder = finder;
  } else if (key != null) {
    realFinder = find.byKey(key);
  } else if (text != null) {
    realFinder = find.text(text);
  }
  if (realFinder == null) {
    throw UnimplementedError('realFinder was not found!');
  }
  return realFinder;
}
