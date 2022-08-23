part of 'app_bloc.dart';

enum AppStatus {
  unauth,
  auth,
  unknown,
  loading,
}

@freezed
abstract class AppState with _$AppState {
  const factory AppState(
      {@Default(AppStatus.unknown) AppStatus appStatus,
      UserApp? userApp}) = _AppState;

  factory AppState.unauth() => _AppState(appStatus: AppStatus.unauth);

  factory AppState.loading() => _AppState(appStatus: AppStatus.loading);

  factory AppState.auth(UserApp userApp) =>
      _AppState(appStatus: AppStatus.auth);
}

// class AppState extends Equatable {
//   final AppStatus status;
//   final UserApp userApp;
//
//   AppState._({required this.status, this.userApp = UserApp.empty});
//
//   AppState.auth(UserApp userApp)
//       : this._(status: AppStatus.auth, userApp: userApp);
//
//   AppState.unauth() : this._(status: AppStatus.unauth);
//
//   AppState.unknown() : this._(status: AppStatus.unknown);
//
//   AppState.loading() : this._(status: AppStatus.loading);
//
//   @override
//   List<Object> get props => [status, userApp];
// }
