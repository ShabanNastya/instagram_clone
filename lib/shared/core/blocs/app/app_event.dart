part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class AppLogout extends AppEvent {}

class AppUserChanged extends AppEvent {
  final UserApp userApp;

  const AppUserChanged(this.userApp);

  @override
  List<Object> get props => [userApp];
}
