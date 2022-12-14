// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call(
      {UserStatus userStatus = UserStatus.initial, UserApp? userApp}) {
    return _UserState(
      userStatus: userStatus,
      userApp: userApp,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  UserStatus get userStatus => throw _privateConstructorUsedError;
  UserApp? get userApp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call({UserStatus userStatus, UserApp? userApp});

  $UserAppCopyWith<$Res>? get userApp;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? userStatus = freezed,
    Object? userApp = freezed,
  }) {
    return _then(_value.copyWith(
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      userApp: userApp == freezed
          ? _value.userApp
          : userApp // ignore: cast_nullable_to_non_nullable
              as UserApp?,
    ));
  }

  @override
  $UserAppCopyWith<$Res>? get userApp {
    if (_value.userApp == null) {
      return null;
    }

    return $UserAppCopyWith<$Res>(_value.userApp!, (value) {
      return _then(_value.copyWith(userApp: value));
    });
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call({UserStatus userStatus, UserApp? userApp});

  @override
  $UserAppCopyWith<$Res>? get userApp;
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object? userStatus = freezed,
    Object? userApp = freezed,
  }) {
    return _then(_UserState(
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      userApp: userApp == freezed
          ? _value.userApp
          : userApp // ignore: cast_nullable_to_non_nullable
              as UserApp?,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState({this.userStatus = UserStatus.initial, this.userApp});

  @JsonKey()
  @override
  final UserStatus userStatus;
  @override
  final UserApp? userApp;

  @override
  String toString() {
    return 'UserState(userStatus: $userStatus, userApp: $userApp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserState &&
            const DeepCollectionEquality()
                .equals(other.userStatus, userStatus) &&
            const DeepCollectionEquality().equals(other.userApp, userApp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userStatus),
      const DeepCollectionEquality().hash(userApp));

  @JsonKey(ignore: true)
  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState({UserStatus userStatus, UserApp? userApp}) =
      _$_UserState;

  @override
  UserStatus get userStatus;
  @override
  UserApp? get userApp;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
