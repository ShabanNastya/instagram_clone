// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_detailed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserDetailedStateTearOff {
  const _$UserDetailedStateTearOff();

  _UserDetailedState call(
      {UserDetailedStatus userDetailedStatus = UserDetailedStatus.initial,
      UserApp? userApp}) {
    return _UserDetailedState(
      userDetailedStatus: userDetailedStatus,
      userApp: userApp,
    );
  }
}

/// @nodoc
const $UserDetailedState = _$UserDetailedStateTearOff();

/// @nodoc
mixin _$UserDetailedState {
  UserDetailedStatus get userDetailedStatus =>
      throw _privateConstructorUsedError;
  UserApp? get userApp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailedStateCopyWith<UserDetailedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailedStateCopyWith<$Res> {
  factory $UserDetailedStateCopyWith(
          UserDetailedState value, $Res Function(UserDetailedState) then) =
      _$UserDetailedStateCopyWithImpl<$Res>;
  $Res call({UserDetailedStatus userDetailedStatus, UserApp? userApp});

  $UserAppCopyWith<$Res>? get userApp;
}

/// @nodoc
class _$UserDetailedStateCopyWithImpl<$Res>
    implements $UserDetailedStateCopyWith<$Res> {
  _$UserDetailedStateCopyWithImpl(this._value, this._then);

  final UserDetailedState _value;
  // ignore: unused_field
  final $Res Function(UserDetailedState) _then;

  @override
  $Res call({
    Object? userDetailedStatus = freezed,
    Object? userApp = freezed,
  }) {
    return _then(_value.copyWith(
      userDetailedStatus: userDetailedStatus == freezed
          ? _value.userDetailedStatus
          : userDetailedStatus // ignore: cast_nullable_to_non_nullable
              as UserDetailedStatus,
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
abstract class _$UserDetailedStateCopyWith<$Res>
    implements $UserDetailedStateCopyWith<$Res> {
  factory _$UserDetailedStateCopyWith(
          _UserDetailedState value, $Res Function(_UserDetailedState) then) =
      __$UserDetailedStateCopyWithImpl<$Res>;
  @override
  $Res call({UserDetailedStatus userDetailedStatus, UserApp? userApp});

  @override
  $UserAppCopyWith<$Res>? get userApp;
}

/// @nodoc
class __$UserDetailedStateCopyWithImpl<$Res>
    extends _$UserDetailedStateCopyWithImpl<$Res>
    implements _$UserDetailedStateCopyWith<$Res> {
  __$UserDetailedStateCopyWithImpl(
      _UserDetailedState _value, $Res Function(_UserDetailedState) _then)
      : super(_value, (v) => _then(v as _UserDetailedState));

  @override
  _UserDetailedState get _value => super._value as _UserDetailedState;

  @override
  $Res call({
    Object? userDetailedStatus = freezed,
    Object? userApp = freezed,
  }) {
    return _then(_UserDetailedState(
      userDetailedStatus: userDetailedStatus == freezed
          ? _value.userDetailedStatus
          : userDetailedStatus // ignore: cast_nullable_to_non_nullable
              as UserDetailedStatus,
      userApp: userApp == freezed
          ? _value.userApp
          : userApp // ignore: cast_nullable_to_non_nullable
              as UserApp?,
    ));
  }
}

/// @nodoc

class _$_UserDetailedState implements _UserDetailedState {
  const _$_UserDetailedState(
      {this.userDetailedStatus = UserDetailedStatus.initial, this.userApp});

  @JsonKey()
  @override
  final UserDetailedStatus userDetailedStatus;
  @override
  final UserApp? userApp;

  @override
  String toString() {
    return 'UserDetailedState(userDetailedStatus: $userDetailedStatus, userApp: $userApp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetailedState &&
            const DeepCollectionEquality()
                .equals(other.userDetailedStatus, userDetailedStatus) &&
            const DeepCollectionEquality().equals(other.userApp, userApp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userDetailedStatus),
      const DeepCollectionEquality().hash(userApp));

  @JsonKey(ignore: true)
  @override
  _$UserDetailedStateCopyWith<_UserDetailedState> get copyWith =>
      __$UserDetailedStateCopyWithImpl<_UserDetailedState>(this, _$identity);
}

abstract class _UserDetailedState implements UserDetailedState {
  const factory _UserDetailedState(
      {UserDetailedStatus userDetailedStatus,
      UserApp? userApp}) = _$_UserDetailedState;

  @override
  UserDetailedStatus get userDetailedStatus;
  @override
  UserApp? get userApp;
  @override
  @JsonKey(ignore: true)
  _$UserDetailedStateCopyWith<_UserDetailedState> get copyWith =>
      throw _privateConstructorUsedError;
}
