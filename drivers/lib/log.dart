// ignore_for_file: type_annotate_public_apis

import 'package:drivers/logger/logger.dart';
import 'package:flutter/widgets.dart';
import 'dart:developer' as d;

void logError(String tag, message, {StackTrace? stackTrace}) {
  _log(
    tag,
    message,
    error: true,
    stackTrace: stackTrace,
  );
}

void log(String tag, message) {
  _log(tag, message);
}

void _log(String tag, message, {bool error = false, StackTrace? stackTrace}) {
  final logEntry = '[${tag.toUpperCase()}] $message';
  if (error) {
    Logger.error(message, title: tag, stackTrace: stackTrace);
  } else {
    Logger.debug(message, title: tag, stackTrace: stackTrace);
  }
  debugPrint(logEntry);
}

void debugPrintLong(String str, {StackTrace? stackTrace}) {
  d.log(str, stackTrace: stackTrace);
}
