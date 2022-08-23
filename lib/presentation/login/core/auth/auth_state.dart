part of 'auth_bloc.dart';

enum AuthStatus {
  auth,
  unauth,
  loading,
  unknown,
}

@freezed
class AuthState with _$AuthState {
  factory AuthState(
      {@Default(AuthStatus.unknown) AuthStatus authStatus,
      UserApp? userApp}) = _AuthState;

  factory AuthState.auth(UserApp userApp) =>
      AuthState(authStatus: AuthStatus.auth);

  factory AuthState.unath() => AuthState(authStatus: AuthStatus.unauth);

  factory AuthState.loading() => AuthState(authStatus: AuthStatus.loading);
}

// class AuthState extends Equatable {
//   final AuthStatus status;
//   final UserApp userApp;
//
//   AuthState._({this.userApp = UserApp.empty, required this.status});
//
//   AuthState.Auth(UserApp userApp)
//       : this._(status: AuthStatus.auth, userApp: userApp);
//
//   AuthState.Unauth()
//       : this._(status: AuthStatus.unauth);
//
//   AuthState.Loading()
//       : this._(status: AuthStatus.loading,);
//
//   AuthState.unknown() : this._(status: AuthStatus.unknown);
//
//   @override
//   List<Object?> get props => [status, userApp];
// }
