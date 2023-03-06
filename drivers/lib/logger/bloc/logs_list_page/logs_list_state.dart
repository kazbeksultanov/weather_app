import 'package:drivers/logger/logger.dart';

abstract class LogsListState {}

class Loaded extends LogsListState {
  final List<LogEvent> events;

  Loaded(this.events);
}
