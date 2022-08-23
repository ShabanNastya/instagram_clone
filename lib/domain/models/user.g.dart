// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAppAdapter extends TypeAdapter<UserApp> {
  @override
  final int typeId = 0;

  @override
  UserApp read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserApp(
      id: fields[0] as String?,
      username: fields[1] as String?,
      email: fields[2] as String?,
      profilePicture: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserApp obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.profilePicture);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAppAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
