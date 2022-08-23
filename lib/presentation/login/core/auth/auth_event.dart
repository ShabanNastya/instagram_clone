part of 'auth_bloc.dart';

class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthLogoutEvent extends AuthEvent {
  const AuthLogoutEvent();

  @override
  List<Object> get props => [];
}

class AuthStateChangedEvent extends AuthEvent {
  const AuthStateChangedEvent(this.user);

  final UserApp? user;

  @override
  List<Object> get props => [];
}

class isAuth extends AuthEvent {
  final AuthStatus status;

  isAuth(this.status);

  @override
  List<Object> get props => [status];
}
