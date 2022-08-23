import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/domain/models/user.dart';
import 'package:equatable/equatable.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';

part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState()) {
    on<AppUserChanged>((event, emit) {
      emit(event.userApp == null
          ? state.copyWith(appStatus: AppStatus.unauth)
          : state.copyWith(appStatus: AppStatus.auth, userApp: event.userApp));
    });

    on<AppLogout>((event, emit) {
      emit(state.copyWith(appStatus: AppStatus.unauth));
    });
  }

  void onAuthSuccess(UserApp userApp) {
    add(AppUserChanged(userApp));
  }

  void onUnauthenticated() {
    add(AppLogout());
  }
}
