// ignore_for_file: type_annotate_public_apis

import 'dart:convert';

import 'package:drivers/logger/logger.dart';

class PrettyPrinter {
  static const topLeftCorner = '┌';
  static const bottomLeftCorner = '└';
  static const middleCorner = '├';
  static const verticalLine = '│';
  static const doubleDivider = '─';
  static const singleDivider = '┄';

  /// Matches a stacktrace line as generated on Android/iOS devices.
  /// For example:
  /// #1      Logger.log (package:logger/src/logger.dart:115:29)
  static final _deviceStackTraceRegex = RegExp(r'#[0-9]+[\s]+(.+) \(([^\s]+)\)');

  /// Matches a stacktrace line as generated by Flutter web.
  /// For example:
  /// packages/logger/src/printers/pretty_printer.dart 91:37
  static final _webStackTraceRegex = RegExp(r'^((packages|dart-sdk)\/[^\s]+\/)');

  /// Matches a stacktrace line as generated by browser Dart.
  /// For example:
  /// dart:sdk_internal
  /// package:logger/src/logger.dart
  static final _browserStackTraceRegex = RegExp(r'^(?:package:)?(dart:[^\s]+|[^\s]+)');

  static DateTime? _startTime;

  /// The index which to begin the stack trace at
  ///
  /// This can be useful if, for instance, Logger is wrapped in another class and
  /// you wish to remove these wrapped calls from stack trace
  final int stackTraceBeginIndex;
  final int methodCount;
  final int errorMethodCount;
  final int lineLength;
  final bool colors;
  final bool printEmojis;
  final bool printTime;

  /// To prevent ascii 'boxing' of any log [Level] include the level in map for excludeBox,
  /// for example to prevent boxing of [Level.verbose] and [Level.info] use excludeBox:{Level.verbose:true, Level.info:true}
  final Map<Level, bool> excludeBox;

  /// To make the default for every level to prevent boxing entirely set [noBoxingByDefault] to true
  /// (boxing can still be turned on for some levels by using something like excludeBox:{Level.error:false} )
  final bool noBoxingByDefault;

  late final Map<Level, bool> includeBox;

  String _topBorder = '';
  String _middleBorder = '';
  String _bottomBorder = '';

  PrettyPrinter({
    this.stackTraceBeginIndex = 0,
    this.methodCount = 2,
    this.errorMethodCount = 8,
    this.lineLength = 20,
    this.colors = true,
    this.printEmojis = true,
    this.printTime = false,
    this.excludeBox = const {},
    this.noBoxingByDefault = false,
  }) {
    _startTime ??= DateTime.now();

    final doubleDividerLine = StringBuffer();
    final singleDividerLine = StringBuffer();
    for (var i = 0; i < lineLength - 1; i++) {
      doubleDividerLine.write(doubleDivider);
      singleDividerLine.write(singleDivider);
    }

    _topBorder = '$topLeftCorner$doubleDividerLine';
    _middleBorder = '$middleCorner$singleDividerLine';
    _bottomBorder = '$bottomLeftCorner$doubleDividerLine';

    // Translate excludeBox map (constant if default) to includeBox map with all Level enum possibilities
    includeBox = {};
    for (final l in Level.values) {
      includeBox[l] = !noBoxingByDefault;
    }
    excludeBox.forEach((k, v) => includeBox[k] = !v);
  }

  List<String> log(LogEvent event) {
    final messageStr = dynamicStringFormat(event.message);

    String? stackTraceStr;
    if (event.stackTrace == null) {
      if (methodCount > 0) {
        stackTraceStr = formatStackTrace(StackTrace.current, methodCount);
      }
    } else if (errorMethodCount > 0) {
      stackTraceStr = formatStackTrace(StackTrace.fromString(event.stackTrace!), errorMethodCount);
    }

    String? timeStr;
    if (printTime) {
      timeStr = getTime();
    }

    return _formatAndPrint(
      event.level,
      messageStr,
      timeStr,
      stackTraceStr,
    );
  }

  String? formatStackTrace(StackTrace? stackTrace, int methodCount) {
    var lines = stackTrace.toString().split('\n');
    if (stackTraceBeginIndex > 0 && stackTraceBeginIndex < lines.length - 1) {
      lines = lines.sublist(stackTraceBeginIndex);
    }
    final formatted = <String>[];
    var count = 0;
    for (final line in lines) {
      if (_discardDeviceStacktraceLine(line) ||
          _discardWebStacktraceLine(line) ||
          _discardBrowserStacktraceLine(line) ||
          line.isEmpty) {
        continue;
      }
      formatted.add('#$count   ${line.replaceFirst(RegExp(r'#\d+\s+'), '')}');
      if (++count == methodCount) {
        break;
      }
    }

    if (formatted.isEmpty) {
      return null;
    } else {
      return formatted.join('\n');
    }
  }

  bool _discardDeviceStacktraceLine(String line) {
    final match = _deviceStackTraceRegex.matchAsPrefix(line);
    if (match == null) {
      return false;
    }
    return match.group(2)!.startsWith('package:logger');
  }

  bool _discardWebStacktraceLine(String line) {
    final match = _webStackTraceRegex.matchAsPrefix(line);
    if (match == null) {
      return false;
    }
    return match.group(1)!.startsWith('packages/logger') ||
        match.group(1)!.startsWith('dart-sdk/lib');
  }

  bool _discardBrowserStacktraceLine(String line) {
    final match = _browserStackTraceRegex.matchAsPrefix(line);
    if (match == null) {
      return false;
    }
    return match.group(1)!.startsWith('package:logger') || match.group(1)!.startsWith('dart:');
  }

  String getTime() {
    String _threeDigits(int n) {
      if (n >= 100) {
        return '$n';
      }
      if (n >= 10) {
        return '0$n';
      }
      return '00$n';
    }

    String _twoDigits(int n) {
      if (n >= 10) {
        return '$n';
      }
      return '0$n';
    }

    final now = DateTime.now();
    final h = _twoDigits(now.hour);
    final min = _twoDigits(now.minute);
    final sec = _twoDigits(now.second);
    final ms = _threeDigits(now.millisecond);
    final timeSinceStart = now.difference(_startTime!).toString();
    return '$h:$min:$sec.$ms (+$timeSinceStart)';
  }

  // Handles any object that is causing JsonEncoder() problems
  Object toEncodableFallback(object) {
    return object.toString();
  }

  String dynamicStringFormat(message) {
    final finalMessage = message is Function ? message() : message;
    if (finalMessage is Map || finalMessage is Iterable) {
      final encoder = JsonEncoder.withIndent('  ', toEncodableFallback);
      return encoder.convert(finalMessage);
    } else {
      return finalMessage.toString();
    }
  }

  List<String> _formatAndPrint(
    Level level,
    String message,
    String? time,
    String? stacktrace,
  ) {
    // This code is non trivial and a type annotation here helps understanding.
    // ignore: omit_local_variable_types
    final List<String> buffer = [];
    final verticalLineAtLevel = (includeBox[level]!) ? ('$verticalLine ') : '';
    final color = level.ansiColor;
    if (includeBox[level]!) {
      buffer.add(color(_topBorder));
    }

    if (stacktrace != null) {
      for (final line in stacktrace.split('\n')) {
        buffer.add(color('$verticalLineAtLevel$line'));
      }
      if (includeBox[level]!) {
        buffer.add(color(_middleBorder));
      }
    }

    if (time != null) {
      buffer.add(color('$verticalLineAtLevel$time'));
      if (includeBox[level]!) {
        buffer.add(color(_middleBorder));
      }
    }

    final emoji = level.emoji;
    for (final line in message.split('\n')) {
      buffer.add(color('$verticalLineAtLevel$emoji$line'));
    }
    if (includeBox[level]!) {
      buffer.add(color(_bottomBorder));
    }

    return buffer;
  }
}
