import 'package:drivers/logger/logger.dart';
import 'package:flutter/material.dart';

enum Level {
  verbose,
  debug,
  info,
  warning,
  error,
}

extension LevelExt on Level {
  String get emoji {
    switch (this) {
      case Level.verbose:
        return '';
      case Level.debug:
        return '🐛 ';
      case Level.info:
        return '💡 ';
      case Level.warning:
        return '⚠️ ';
      case Level.error:
        return '⛔ ';
    }
  }

  String get label {
    switch (this) {
      case Level.verbose:
        return 'Verbose';
      case Level.debug:
        return 'Debug';
      case Level.info:
        return 'Info';
      case Level.warning:
        return 'Warning';
      case Level.error:
        return 'Error';
    }
  }

  AnsiColor get ansiColor {
    switch (this) {
      case Level.verbose:
        return AnsiColor.fg(AnsiColor.grey(0.5));
      case Level.debug:
        return AnsiColor.none();
      case Level.info:
        return AnsiColor.fg(12);
      case Level.warning:
        return AnsiColor.fg(208);
      case Level.error:
        return AnsiColor.fg(196);
    }
  }

  Color? get color {
    switch (this) {
      case Level.verbose:
        return Colors.grey;
      case Level.debug:
        return null;
      case Level.info:
        return Colors.blue;
      case Level.warning:
        return Colors.orange;
      case Level.error:
        return Colors.red;
    }
  }
}
