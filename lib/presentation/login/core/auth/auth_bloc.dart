import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/domain/models/user.dart';
import 'package:instagram_clone/domain/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthState()) {
    authRepository.idTokenChanges.listen((User? user) {
      // logic
      if (user == null) {
        print('user is sign out');
      } else {
        print('user is sign in');
      }
      // emit()
    });

    authRepository.authStateChanges.listen((UserApp? user) {
      authChanged(user);
    });
    authRepository.userChanges.listen((User? user) {});

    on<AuthEvent>((event, emit) async {
      emit(state.copyWith(authStatus: AuthStatus.loading));
    });

    on<AuthStateChangedEvent>((event, emit) async {
      if (event.user == null) {
        emit(
          state.copyWith(
            userApp: null,
            authStatus: AuthStatus.unauth,
          ),
        );
      } else {
        emit(
          state.copyWith(
            authStatus: AuthStatus.auth,
            userApp: event.user,
          ),
        );
      }
    });
    on<AuthLogoutEvent>((event, emit) async {
      try {
        emit(state.copyWith(authStatus: AuthStatus.loading));
        await authRepository.logOut();
      } catch (e) {
        emit(state.copyWith(authStatus: AuthStatus.auth));
      }
    });
  }

  checkAuth() {
    add(AuthEvent());
  }

  void logout() {
    add(AuthLogoutEvent());
  }

  void authChanged(UserApp? user) {
    if (user == null) {
      print('user is sign out');
    } else {
      print('user is sign in');
    }

    add(AuthStateChangedEvent(user));
  }
}
