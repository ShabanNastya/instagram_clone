// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserAppTearOff {
  const _$UserAppTearOff();

  _UserApp call(
      {@HiveField(0) String? id,
      @HiveField(1) String? username,
      @HiveField(2) String? email,
      @HiveField(3) String? profilePicture}) {
    return _UserApp(
      id: id,
      username: username,
      email: email,
      profilePicture: profilePicture,
    );
  }
}

/// @nodoc
const $UserApp = _$UserAppTearOff();

/// @nodoc
mixin _$UserApp {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get username => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get profilePicture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAppCopyWith<UserApp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAppCopyWith<$Res> {
  factory $UserAppCopyWith(UserApp value, $Res Function(UserApp) then) =
      _$UserAppCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? username,
      @HiveField(2) String? email,
      @HiveField(3) String? profilePicture});
}

/// @nodoc
class _$UserAppCopyWithImpl<$Res> implements $UserAppCopyWith<$Res> {
  _$UserAppCopyWithImpl(this._value, this._then);

  final UserApp _value;
  // ignore: unused_field
  final $Res Function(UserApp) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserAppCopyWith<$Res> implements $UserAppCopyWith<$Res> {
  factory _$UserAppCopyWith(_UserApp value, $Res Function(_UserApp) then) =
      __$UserAppCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? username,
      @HiveField(2) String? email,
      @HiveField(3) String? profilePicture});
}

/// @nodoc
class __$UserAppCopyWithImpl<$Res> extends _$UserAppCopyWithImpl<$Res>
    implements _$UserAppCopyWith<$Res> {
  __$UserAppCopyWithImpl(_UserApp _value, $Res Function(_UserApp) _then)
      : super(_value, (v) => _then(v as _UserApp));

  @override
  _UserApp get _value => super._value as _UserApp;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_UserApp(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserApp implements _UserApp {
  _$_UserApp(
      {@HiveField(0) this.id,
      @HiveField(1) this.username,
      @HiveField(2) this.email,
      @HiveField(3) this.profilePicture});

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? username;
  @override
  @HiveField(2)
  final String? email;
  @override
  @HiveField(3)
  final String? profilePicture;

  @override
  String toString() {
    return 'UserApp(id: $id, username: $username, email: $email, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserApp &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.profilePicture, profilePicture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(profilePicture));

  @JsonKey(ignore: true)
  @override
  _$UserAppCopyWith<_UserApp> get copyWith =>
      __$UserAppCopyWithImpl<_UserApp>(this, _$identity);
}

abstract class _UserApp implements UserApp {
  factory _UserApp(
      {@HiveField(0) String? id,
      @HiveField(1) String? username,
      @HiveField(2) String? email,
      @HiveField(3) String? profilePicture}) = _$_UserApp;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get username;
  @override
  @HiveField(2)
  String? get email;
  @override
  @HiveField(3)
  String? get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$UserAppCopyWith<_UserApp> get copyWith =>
      throw _privateConstructorUsedError;
}
