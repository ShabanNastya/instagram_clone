part of 'user_bloc.dart';

enum UserStatus {
  initial,
  loading,
  loaded,
}

@freezed
abstract class UserState with _$UserState {
  const factory UserState(
      {@Default(UserStatus.initial) UserStatus userStatus,
      UserApp? userApp}) = _UserState;

  factory UserState.initial() => _UserState(userStatus: UserStatus.initial);

  factory UserState.loading() => _UserState(userStatus: UserStatus.loading);

  factory UserState.loaded(UserApp userApp) =>
      _UserState(userStatus: UserStatus.loaded);
}
