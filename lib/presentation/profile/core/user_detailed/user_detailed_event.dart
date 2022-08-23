part of 'user_detailed_bloc.dart';

abstract class UserDetailedEvent extends Equatable {
  const UserDetailedEvent();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class UsernameUpdate extends UserDetailedEvent {
  final String? username = UserApp().username;

  UsernameUpdate({required String username});
}

class UserEmailUpdate extends UserDetailedEvent {
  final String? email = UserApp().email;

  UserEmailUpdate({required String email});
}
