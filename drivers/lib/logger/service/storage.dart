import 'dart:convert';
import 'dart:io';
import 'package:drivers/log.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:drivers/logger/logger.dart';

part 'storage.g.dart';

@HiveType(typeId: 100)
class LogEventStorageModel extends HiveObject {
  static String get hiveBoxName => 'LogEventsBox';

  @HiveField(0)
  final Map<String, dynamic> data;

  LogEventStorageModel(this.data);

  factory LogEventStorageModel.fromEvent(LogEvent event) {
    return LogEventStorageModel(event.toJson());
  }

  LogEvent getEvent() {
    return LogEvent.fromJson(data);
  }
}

class LogsStorage {
  static int maxLogsCount = 100;

  static int get lastLogId => _lastIndex;
  static int _lastIndex = 0;

  Future<void> init(int logsCount) async {
    maxLogsCount = logsCount;

    // for do not create a new id in hive
    // create a list with lenght == maxLogsCount
    // if last index == maxLogsCount
    // rewrite logs from 0 index
    //
    // exemple:
    // maxLogsCount = 10
    // [0,1,2,3,4,5,6,7,8,9,10]
    // add 11 and 12 element
    // [11,12,2,3,4,5,6,7,8,9,10]

    await Hive.initFlutter();
    if (!Hive.isAdapterRegistered(LogEventStorageModelAdapter().typeId)) {
      Hive.registerAdapter(LogEventStorageModelAdapter());
    }

    final _box = await Hive.openBox<LogEventStorageModel>(LogEventStorageModel.hiveBoxName);
    if (_box.values.isNotEmpty) {
      final List<LogEvent> events = _box.values.map((e) => e.getEvent()).toList();
      final Map<int, int> _indexFromDateTime = {};
      final List<MapEntry<int, int>> _entry = [];
      //get index from list with dateTime
      for (int i = 0; i < _box.length; i++) {
        _entry.add(MapEntry(events[i].dateTime.microsecondsSinceEpoch, i));
      }
      _indexFromDateTime.addEntries(_entry);
      final List<LogEvent> logs = List.from(events);
      //sort from old to new
      logs.sort((a, b) => a.dateTime.compareTo(b.dateTime));

      //set last index
      int? _index = _indexFromDateTime[logs.last.dateTime.microsecondsSinceEpoch];
      if (_index != null) {
        _index++;
      }
      _lastIndex = _index ?? 0;
    }
  }

  Future<File> get file async {
    final logs = await getLogs();
    final text = jsonEncode(logs.map((e) => e.toJson()).toList());

    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/logs.txt');
    await file.writeAsString(text);
    return file;
  }

  Future<void> deleteLogs() async {
    try {
      final _box = await Hive.openBox<LogEventStorageModel>(LogEventStorageModel.hiveBoxName);
      await _box.clear();
    } catch (e, stack) {
      logError('Log storage', e, stackTrace: stack);
    }
  }

  Future<List<LogEvent>> getLogs() async {
    try {
      final _box = await Hive.openBox<LogEventStorageModel>(LogEventStorageModel.hiveBoxName);
      return _box.values.map((e) => e.getEvent()).toList();
    } catch (e) {
      return [];
    }
  }

  Future<void> addLog(LogEvent log) async {
    try {
      final _box = await Hive.openBox<LogEventStorageModel>(LogEventStorageModel.hiveBoxName);
      int index = lastLogId;
      if (lastLogId >= maxLogsCount) {
        _lastIndex = 0;
        index = 0;
      }
      await _box.put(index, LogEventStorageModel.fromEvent(log));
      _lastIndex = _lastIndex + 1;
    } catch (e) {
      return;
    }
  }
}
