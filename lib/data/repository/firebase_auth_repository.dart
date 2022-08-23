import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/domain/models/user.dart';

import '../../domain/repository/auth_repository.dart';

class UserAppMapper {
  static UserApp? fromFirebaseUser(User? user) {
    if (user == null) return null;
    return UserApp(
      username: user.displayName,
      email: user.email,
      id: user.uid,
    );
  }
}

class FirebaseAuthRepository extends AuthRepository {
  final FirebaseAuth _auth;

  FirebaseAuthRepository(this._auth);

  @override
  Stream<UserApp?> get authStateChanges =>
      _auth.authStateChanges().map(UserAppMapper.fromFirebaseUser);

  @override
  Stream<User?> get idTokenChanges => _auth.idTokenChanges();

  @override
  Stream<User?> get userChanges => _auth.userChanges();

  @override
  Future<void> login({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> signUp({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<void> logOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<bool> isAuth() async {
    return FirebaseAuth.instance.currentUser != null;
  }
}
