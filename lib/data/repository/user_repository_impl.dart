import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:instagram_clone/domain/models/user.dart';
import 'package:instagram_clone/domain/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final Box<UserApp> userBox;

  UserRepositoryImpl(this.userBox);

  @override
  UserApp? getUserInfo() {
    final userId = userBox.keys;
    final user = userBox.get(userId);
    return user;
  }

  @override
  Future<void> updateUserInfo(UserApp userApp) async {
    await userBox.put(userApp.id, userApp);
  }

  @override
  Future<void> delete(UserApp userApp) async {
    await userBox.delete(userApp.id);
  }

  @override
  ValueListenable<Box<UserApp?>> infoChanges(
      ValueListenable<UserApp?> listenable) {
    StreamController<UserApp?>? controller;

    void listener() {
      controller!.add(listenable.value);
    }

    void start() {
      listenable.addListener(listener);
    }

    void end() {
      listenable.removeListener(listener);
    }

    controller = StreamController(
      onListen: start,
      onPause: end,
      onResume: start,
      onCancel: end,
    );

    return userBox.listenable();
  }
}
