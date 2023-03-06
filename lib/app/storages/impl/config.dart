import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:weather_app/app/config.dart';
import 'package:weather_app/app/storages/storage.dart';

class ConfigStorage implements SingleStorageService<AppConfig> {
  const ConfigStorage();

  @override
  Future<void> write(AppConfig item) async {
    final box = await Hive.openBox<String>('config');
    await _writeTTMConfig(box, '', item);
  }

  @override
  Future<AppConfig?> read() async {
    final box = await Hive.openBox<String>('config');
    return _readTTMConfig(box, '');
  }

  @override
  Future<void> delete() async {
    final box = await Hive.openBox<String>('config');
    await box.deleteFromDisk();
  }

  @override
  Future<void> backup() async {
    final box = await Hive.openBox<String>('config');
    final config = await _readTTMConfig(box, '');
    await _writeTTMConfig(box, 'backup', config!);
  }

  @override
  Future<void> restoreFromBackup() async {
    final box = await Hive.openBox<String>('config');
    final config = await _readTTMConfig(box, 'backup');
    await _writeTTMConfig(box, '', config!);
  }

  @override
  Future<void> deleteBackup() async {
    final box = await Hive.openBox<String>('config');
    await _deleteTTMConfig(box, 'backup');
  }

  @override
  Future<AppConfig?> readBackup() async {
    final box = await Hive.openBox<String>('config');
    return _readTTMConfig(box, 'backup');
  }

  Future<void> _writeTTMConfig(
    Box<String> box,
    String prefix,
    AppConfig config,
  ) async {
    await box.put('$prefix:config', jsonEncode(config.toJson()));
  }

  Future<AppConfig?> _readTTMConfig(Box<String> box, String prefix) async {
    try {
      final data = jsonDecode(box.get('$prefix:config', defaultValue: '{}')!);
      return AppConfig.fromJson(data);
    } catch (e) {
      return null;
    }
  }

  Future<void> _deleteTTMConfig(Box<String> box, String prefix) async {
    await box.delete('$prefix:config');
  }

  @override
  Future<bool> contains() async {
    final box = await Hive.openBox<String>('config');
    return box.containsKey(':config');
  }
}
