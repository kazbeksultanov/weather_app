import 'package:drivers/logger/logger.dart';

class LogEvent {
  final Level level;
  final String title;
  final dynamic message;
  final String? stackTrace;
  final DateTime dateTime;

  LogEvent({
    required this.title,
    required this.message,
    required this.level,
    required this.dateTime,
    this.stackTrace,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'level': level.name,
      'title': title,
      'message': message,
      'stackTrace': stackTrace.toString(),
      'dateTime': dateTime.toIso8601String(),
    };
  }

  factory LogEvent.fromJson(Map<String, dynamic> map) {
    return LogEvent(
      level: Level.values.firstWhere((element) => element.name == map['level']),
      title: map['title'],
      message: map['message'],
      stackTrace: map['stackTrace'],
      dateTime: DateTime.parse(map['dateTime']),
    );
  }
}
