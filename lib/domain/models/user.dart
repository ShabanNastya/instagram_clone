import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'user.g.dart';

part 'user.freezed.dart';

@freezed
@HiveType(typeId: 0)
class UserApp with _$UserApp {
  factory UserApp({
    @HiveField(0) String? id,
    @HiveField(1) String? username,
    @HiveField(2) String? email,
    @HiveField(3) String? profilePicture,
  }) = _UserApp;
}
