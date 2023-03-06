// ignore_for_file: type_annotate_public_apis, avoid_print

import 'package:drivers/logger/logger.dart';
import 'package:flutter/material.dart';

class OutputEvent {
  final Level level;
  final List<String> lines;

  const OutputEvent(this.level, this.lines);
}

@Deprecated('Use a custom LogFilter instead')
typedef LogCallback = void Function(LogEvent event);

@Deprecated('Use a custom LogOutput instead')
typedef OutputCallback = void Function(OutputEvent event);

abstract class Logger {
  /// The current logging level of the app.
  ///
  /// All logs with levels below this level will be omitted.
  static Level level = Level.verbose;
  static final printer = PrettyPrinter();
  static final output = ConsoleOutput();
  static final _storage = LogsStorage();
  static bool active = false;

  static Future<void> showLogs(BuildContext context) async {
    await Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoggerPage()));
  }

  static Future<void> init(LogParametr parametrs) async {
    try {
      await _storage.init(parametrs.maxLogsCount);
      active = true;
    } catch (e) {
      active = false;
    }
  }

  /// Log a message at level [Level.verbose].
  static void verbose(message, {String? title, StackTrace? stackTrace}) {
    log(Level.verbose, message, stackTrace: stackTrace, title: title);
  }

  /// Log a message at level [Level.debug].
  static void debug(message, {String? title, StackTrace? stackTrace}) {
    log(Level.debug, message, stackTrace: stackTrace, title: title);
  }

  /// Log a message at level [Level.info].
  static void info(message, {String? title, StackTrace? stackTrace}) {
    log(Level.info, message, stackTrace: stackTrace, title: title);
  }

  /// Log a message at level [Level.warning].
  static void warning(message, {String? title, StackTrace? stackTrace}) {
    log(Level.warning, message, stackTrace: stackTrace, title: title);
  }

  /// Log a message at level [Level.error].
  static void error(message, {String? title, StackTrace? stackTrace}) {
    log(Level.error, message, stackTrace: stackTrace, title: title);
  }

  /// Log a message with [level].
  static void log(Level level, message, {String? title, StackTrace? stackTrace}) {
    if (active) {
      final logEvent = LogEvent(
        level: level,
        message: message,
        stackTrace: stackTrace.toString(),
        title: (title ?? level.label).toUpperCase(),
        dateTime: DateTime.now(),
      );

      try {
        _storage.addLog(logEvent);
        final outputs = printer.log(logEvent);
        final outputEvent = OutputEvent(level, outputs);
        output.output(outputEvent);
      } catch (e, s) {
        print(e);
        print(s);
      }
    }
  }
}
