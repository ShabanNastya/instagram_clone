// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call({AppStatus appStatus = AppStatus.unknown, UserApp? userApp}) {
    return _AppState(
      appStatus: appStatus,
      userApp: userApp,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  AppStatus get appStatus => throw _privateConstructorUsedError;
  UserApp? get userApp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({AppStatus appStatus, UserApp? userApp});

  $UserAppCopyWith<$Res>? get userApp;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? appStatus = freezed,
    Object? userApp = freezed,
  }) {
    return _then(_value.copyWith(
      appStatus: appStatus == freezed
          ? _value.appStatus
          : appStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
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
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call({AppStatus appStatus, UserApp? userApp});

  @override
  $UserAppCopyWith<$Res>? get userApp;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? appStatus = freezed,
    Object? userApp = freezed,
  }) {
    return _then(_AppState(
      appStatus: appStatus == freezed
          ? _value.appStatus
          : appStatus // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      userApp: userApp == freezed
          ? _value.userApp
          : userApp // ignore: cast_nullable_to_non_nullable
              as UserApp?,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState({this.appStatus = AppStatus.unknown, this.userApp});

  @JsonKey()
  @override
  final AppStatus appStatus;
  @override
  final UserApp? userApp;

  @override
  String toString() {
    return 'AppState(appStatus: $appStatus, userApp: $userApp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState &&
            const DeepCollectionEquality().equals(other.appStatus, appStatus) &&
            const DeepCollectionEquality().equals(other.userApp, userApp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appStatus),
      const DeepCollectionEquality().hash(userApp));

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState({AppStatus appStatus, UserApp? userApp}) =
      _$_AppState;

  @override
  AppStatus get appStatus;
  @override
  UserApp? get userApp;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
