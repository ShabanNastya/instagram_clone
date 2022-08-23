import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone/domain/models/user.dart';
import 'package:instagram_clone/domain/repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc.freezed.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc(this.userRepository) : super(UserState()) {
    ///?!?
    // userRepository.infoChanges().addListener(() {
    //   getInfo();
    // });

    on<UserGetInfo>((event, emit) {
      try {
        emit(state.copyWith(userStatus: UserStatus.loading));
        userRepository.getUserInfo();
        emit(state.copyWith(userStatus: UserStatus.loaded));
      } catch (e) {
        emit(state.copyWith(userStatus: UserStatus.initial));
      }
    });
    on<UserUpdate>((event, emit) async {
      try {
        emit(state.copyWith(userStatus: UserStatus.loading));
        emit(state.copyWith(userApp: event.userApp));
        await userRepository.updateUserInfo(event.userApp);
        emit(state.copyWith(userStatus: UserStatus.loaded));
      } catch (e) {
        emit(state.copyWith(userStatus: UserStatus.initial));
      }
    });

    on<UserDelete>((event, emit) async {
      try {
        emit(state.copyWith(userStatus: UserStatus.loading));
        emit(state.copyWith(userApp: event.userApp));
        await userRepository.delete(event.userApp);
      } catch (e) {
        emit(state.copyWith(userStatus: UserStatus.initial));
      }
    });
  }

  getInfo() {
    add(UserGetInfo());
  }

  saveUser(UserApp userApp) {
    add(UserUpdate(userApp));
  }

  deleteUser(UserApp userApp) {
    add(UserDelete(userApp));
  }
}
