abstract class StorageService<T> {
  Future<bool> contains(String id);

  Future<T?> read(String id);

  Future<Iterable<T>> readAll();

  Future<void> write(String id, T item);

  Future<void> delete(String id);

  Future<void> deleteAll();

  Future<void> backup(String id);

  Future<void> restoreFromBackup(String id);

  Future<void> deleteBackup(String id);

  Future<void> backupAll();

  Future<void> restoreAllFromBackup();

  Future<void> deleteAllBackups();
}

abstract class SingleStorageService<T> {
  Future<bool> contains();

  Future<T?> read();

  Future<T?> readBackup();

  Future<void> write(T item);

  Future<void> backup();

  Future<void> restoreFromBackup();

  Future<void> deleteBackup();

  Future<void> delete();
}

abstract class SinglePatchableStorageService<T, K> {
  Future<T> read();

  Future<void> write(T item);

  // ignore: type_annotate_public_apis
  Future<void> patch(K key, value);

  Future<void> backup();

  Future<void> restoreFromBackup();

  Future<void> deleteBackup();

  Future<void> delete();
}
