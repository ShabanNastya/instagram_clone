import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/domain/models/user.dart';
import 'package:instagram_clone/domain/repository/user_repository.dart';

part 'user_detailed_bloc.freezed.dart';

part 'user_detailed_event.dart';

part 'user_detailed_state.dart';

class UserDetailedBloc extends Bloc<UserDetailedEvent, UserDetailedState> {
  final UserRepository userRepository;

  UserDetailedBloc(this.userRepository) : super(UserDetailedState()) {
    on<UsernameUpdate>((event, emit) {
      emit(state.copyWith(
          userApp: state.userApp!.copyWith(username: event.username)));
    });

    on<UserEmailUpdate>((event, emit) {
      emit(
          state.copyWith(userApp: state.userApp!.copyWith(email: event.email)));
    });
  }

  updateUsername(String username) {
    add(UsernameUpdate(username: username));
  }

  updateEmail(String email) {
    add(UserEmailUpdate(email: email));
  }
}
