// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_city_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavedCityInfoAdapter extends TypeAdapter<SavedCityInfo> {
  @override
  final int typeId = 0;

  @override
  SavedCityInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavedCityInfo(
      id: fields[0] as String,
      city: fields[1] as String,
      country: fields[2] as String,
      countryCode: fields[3] as String,
      timezone: fields[4] as String?,
      lat: fields[5] as double,
      long: fields[6] as double,
    );
  }

  @override
  void write(BinaryWriter writer, SavedCityInfo obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.city)
      ..writeByte(2)
      ..write(obj.country)
      ..writeByte(3)
      ..write(obj.countryCode)
      ..writeByte(4)
      ..write(obj.timezone)
      ..writeByte(5)
      ..write(obj.lat)
      ..writeByte(6)
      ..write(obj.long);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavedCityInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
