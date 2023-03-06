// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LogEventStorageModelAdapter extends TypeAdapter<LogEventStorageModel> {
  @override
  final int typeId = 100;

  @override
  LogEventStorageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LogEventStorageModel(
      (fields[0] as Map).cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, LogEventStorageModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogEventStorageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
