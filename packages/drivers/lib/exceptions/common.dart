import 'package:localized_string/localized_string.dart';

class SchemeConsistencyException implements Exception {
  final String? message;

  const SchemeConsistencyException(this.message);

  @override
  String toString() {
    if (message == null) {
      return '$SchemeConsistencyException';
    }
    return '$SchemeConsistencyException: $message';
  }
}

abstract class DiagnosticMessageException implements Exception {
  String get diagnosticMessage;
}

abstract class LocalizeMessageException implements Exception {
  LocalizedString get localizedMessage;
}

abstract class LocalizeDescriptionException implements Exception {
  LocalizedString get descriptionMessage;
}

abstract class LogicException extends LocalizeMessageException {}

class CancelledException implements LogicException {
  @override
  LocalizedString get localizedMessage => LocalizedString.fromString('Cancelled');
}

class ContextNotFoundException extends LogicException {
  @override
  LocalizedString get localizedMessage => LocalizedString.fromString('Context not found');
}
