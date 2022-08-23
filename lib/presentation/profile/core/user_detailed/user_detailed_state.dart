part of 'user_detailed_bloc.dart';

enum UserDetailedStatus {
  initial,
  loading,
  done,
}

@freezed
abstract class UserDetailedState with _$UserDetailedState {
  const factory UserDetailedState(
          {@Default(UserDetailedStatus.initial)
              UserDetailedStatus userDetailedStatus,
          UserApp? userApp}) =
      _UserDetailedState;

  factory UserDetailedState.initial() => _UserDetailedState(userDetailedStatus: UserDetailedStatus.initial);

  factory UserDetailedState.loading() => _UserDetailedState(userDetailedStatus: UserDetailedStatus.loading);

  factory UserDetailedState.done(UserApp userApp) => _UserDetailedState(userDetailedStatus: UserDetailedStatus.done);
}
