import 'package:hive/hive.dart';
import 'package:weather_app/app/storages/storage.dart';
import 'package:weather_app/layers/services/storages/impl/saved_city_hive.dart';

class SavedCityInfoStorage implements StorageService<SavedCityInfo> {
  static const String _name = 'savedCityInfo';

  @override
  Future<void> write(String id, SavedCityInfo item) async {
    final box = await Hive.openBox<SavedCityInfo>(_name);
    await box.put(id, item);
  }

  @override
  Future<SavedCityInfo> read(String id) async {
    final box = await Hive.openBox<SavedCityInfo>(_name);
    return box.get(id)!;
  }

  @override
  Future<void> delete(String? id) async {
    final box = await Hive.openBox<SavedCityInfo>(_name);
    await box.delete(id);
  }

  @override
  Future<void> deleteAll() async {
    final box = await Hive.openBox<SavedCityInfo>(_name);
    await box.deleteFromDisk();
  }

  @override
  Future<void> backup(String id) async {
    final box = await Hive.openBox<SavedCityInfo>(_name);
    final item = box.get(id)!;

    final backupBox = await Hive.openBox<SavedCityInfo>('$_name:backup');
    await backupBox.put(id, item);
  }

  @override
  Future<void> restoreFromBackup(String id) async {
    final backupBox = await Hive.openBox<SavedCityInfo>('$_name:backup');
    final item = backupBox.get(id)!;

    final box = await Hive.openBox<SavedCityInfo>(_name);
    await box.put(id, item);
  }

  @override
  Future<void> deleteBackup(String id) async {
    final backupBox = await Hive.openBox<SavedCityInfo>('$_name:backup');
    await backupBox.delete(id);
  }

  @override
  Future<void> backupAll() async {
    await deleteAllBackups();
    final box = await Hive.openBox<SavedCityInfo>(_name);

    for (final wallet in box.values) {
      await backup(wallet.id);
    }
  }

  @override
  Future<void> restoreAllFromBackup() async {
    await deleteAll();
    final box = await Hive.openBox<SavedCityInfo>('$_name:backup');

    for (final wallet in box.values) {
      await restoreFromBackup(wallet.id);
    }
  }

  @override
  Future<void> deleteAllBackups() async {
    final box = await Hive.openBox<SavedCityInfo>('$_name:backup');
    await box.deleteFromDisk();
  }

  @override
  Future<Iterable<SavedCityInfo>> readAll() async {
    final box = await Hive.openBox<SavedCityInfo>(_name);
    return box.values;
  }

  @override
  Future<bool> contains(String id) async {
    final box = await Hive.openBox<SavedCityInfo>(_name);
    return box.containsKey(id);
  }
}
