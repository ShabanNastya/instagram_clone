import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:instagram_clone/domain/models/user.dart';

abstract class UserRepository {
  // ValueListenable<Box<UserApp?>> get infoChanges;

  ValueListenable<Box<UserApp?>> infoChanges(
      ValueListenable<UserApp?> listenable);

  Future<void> updateUserInfo(UserApp userApp);

  UserApp? getUserInfo();

  Future<void> delete(UserApp userApp);

}
