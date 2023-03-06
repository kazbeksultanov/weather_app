import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:weather_app/app/storages/storage.dart';
import 'package:weather_app/layers/services/schemes.dart';

class WeatherApiCacheStorage implements SingleStorageService<WeatherApiCacheData> {
  static const _name = 'WeatherApiCacheStorage';
  static const _backup = 'backup';

  @override
  Future<void> write(WeatherApiCacheData item) async {
    final box = await Hive.openBox<String>(_name);
    await _writeTTMConfig(box, '', item);
  }

  @override
  Future<WeatherApiCacheData?> read() async {
    final box = await Hive.openBox<String>(_name);
    return _readTTMConfig(box, '');
  }

  @override
  Future<void> delete() async {
    final box = await Hive.openBox<String>(_name);
    await box.deleteFromDisk();
  }

  @override
  Future<void> backup() async {
    final box = await Hive.openBox<String>(_name);
    final config = await _readTTMConfig(box, '');
    await _writeTTMConfig(box, _backup, config!);
  }

  @override
  Future<void> restoreFromBackup() async {
    final box = await Hive.openBox<String>(_name);
    final config = await _readTTMConfig(box, _backup);
    await _writeTTMConfig(box, '', config!);
  }

  @override
  Future<void> deleteBackup() async {
    final box = await Hive.openBox<String>(_name);
    await _deleteTTMConfig(box, _backup);
  }

  @override
  Future<WeatherApiCacheData?> readBackup() async {
    final box = await Hive.openBox<String>(_name);
    return _readTTMConfig(box, _backup);
  }

  Future<void> _writeTTMConfig(
    Box<String> box,
    String prefix,
    WeatherApiCacheData config,
  ) async {
    await box.put('$prefix:$_name', jsonEncode(config.toJson()));
  }

  Future<WeatherApiCacheData?> _readTTMConfig(Box<String> box, String prefix) async {
    try {
      final data = jsonDecode(box.get('$prefix:$_name', defaultValue: '{}')!);
      return WeatherApiCacheData.fromJson(data);
    } catch (e) {
      return null;
    }
  }

  Future<void> _deleteTTMConfig(Box<String> box, String prefix) async {
    await box.delete('$prefix:$_name');
  }

  @override
  Future<bool> contains() async {
    final box = await Hive.openBox<String>(_name);
    return box.containsKey(':$_name');
  }
}
