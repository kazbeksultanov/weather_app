import 'package:drivers/logger/models/log_event.dart';

abstract class LogUseCase {
  Future<List<LogEvent>> getLogs();

  Future<void> clearLog();

  Future<void> shareLogs();
}
