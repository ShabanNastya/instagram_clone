import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/domain/models/user.dart';

abstract class AuthRepository {
  Stream<UserApp?> get authStateChanges;

  Stream<User?> get idTokenChanges;

  Stream<User?> get userChanges;

  Future<bool> isAuth();

  Future<void> login({required String email, required String password});

  Future<void> signUp({required String email, required String password});

  Future<void> logOut();
}
