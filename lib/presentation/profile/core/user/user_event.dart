part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

class UserGetInfo extends UserEvent {}

class UserUpdate extends UserEvent {
  final UserApp userApp;

  UserUpdate(this.userApp);
}

class UserDelete extends UserEvent {
  final UserApp userApp;

  UserDelete(this.userApp);
}
