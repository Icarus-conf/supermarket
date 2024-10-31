// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String username, XFile? image)
        registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() checkAutoLogin,
    required TResult Function(String userId, XFile image) updateProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? checkAutoLogin,
    TResult? Function(String userId, XFile image)? updateProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? checkAutoLogin,
    TResult Function(String userId, XFile image)? updateProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(LogoutUser value) logoutUser,
    required TResult Function(CheckAutoLogin value) checkAutoLogin,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(LoginUser value)? loginUser,
    TResult? Function(LogoutUser value)? logoutUser,
    TResult? Function(CheckAutoLogin value)? checkAutoLogin,
    TResult? Function(UpdateProfileImage value)? updateProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LogoutUser value)? logoutUser,
    TResult Function(CheckAutoLogin value)? checkAutoLogin,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegisterUserImplCopyWith<$Res> {
  factory _$$RegisterUserImplCopyWith(
          _$RegisterUserImpl value, $Res Function(_$RegisterUserImpl) then) =
      __$$RegisterUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String username, XFile? image});
}

/// @nodoc
class __$$RegisterUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterUserImpl>
    implements _$$RegisterUserImplCopyWith<$Res> {
  __$$RegisterUserImplCopyWithImpl(
      _$RegisterUserImpl _value, $Res Function(_$RegisterUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
    Object? image = freezed,
  }) {
    return _then(_$RegisterUserImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$RegisterUserImpl implements RegisterUser {
  const _$RegisterUserImpl(
      this.email, this.password, this.username, this.image);

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final XFile? image;

  @override
  String toString() {
    return 'AuthEvent.registerUser(email: $email, password: $password, username: $username, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, username, image);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      __$$RegisterUserImplCopyWithImpl<_$RegisterUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String username, XFile? image)
        registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() checkAutoLogin,
    required TResult Function(String userId, XFile image) updateProfileImage,
  }) {
    return registerUser(email, password, username, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? checkAutoLogin,
    TResult? Function(String userId, XFile image)? updateProfileImage,
  }) {
    return registerUser?.call(email, password, username, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? checkAutoLogin,
    TResult Function(String userId, XFile image)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(email, password, username, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(LogoutUser value) logoutUser,
    required TResult Function(CheckAutoLogin value) checkAutoLogin,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(LoginUser value)? loginUser,
    TResult? Function(LogoutUser value)? logoutUser,
    TResult? Function(CheckAutoLogin value)? checkAutoLogin,
    TResult? Function(UpdateProfileImage value)? updateProfileImage,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LogoutUser value)? logoutUser,
    TResult Function(CheckAutoLogin value)? checkAutoLogin,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class RegisterUser implements AuthEvent {
  const factory RegisterUser(final String email, final String password,
      final String username, final XFile? image) = _$RegisterUserImpl;

  String get email;
  String get password;
  String get username;
  XFile? get image;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterUserImplCopyWith<_$RegisterUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginUserImplCopyWith<$Res> {
  factory _$$LoginUserImplCopyWith(
          _$LoginUserImpl value, $Res Function(_$LoginUserImpl) then) =
      __$$LoginUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginUserImpl>
    implements _$$LoginUserImplCopyWith<$Res> {
  __$$LoginUserImplCopyWithImpl(
      _$LoginUserImpl _value, $Res Function(_$LoginUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginUserImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUserImpl implements LoginUser {
  const _$LoginUserImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      __$$LoginUserImplCopyWithImpl<_$LoginUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String username, XFile? image)
        registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() checkAutoLogin,
    required TResult Function(String userId, XFile image) updateProfileImage,
  }) {
    return loginUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? checkAutoLogin,
    TResult? Function(String userId, XFile image)? updateProfileImage,
  }) {
    return loginUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? checkAutoLogin,
    TResult Function(String userId, XFile image)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(LogoutUser value) logoutUser,
    required TResult Function(CheckAutoLogin value) checkAutoLogin,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(LoginUser value)? loginUser,
    TResult? Function(LogoutUser value)? logoutUser,
    TResult? Function(CheckAutoLogin value)? checkAutoLogin,
    TResult? Function(UpdateProfileImage value)? updateProfileImage,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LogoutUser value)? logoutUser,
    TResult Function(CheckAutoLogin value)? checkAutoLogin,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class LoginUser implements AuthEvent {
  const factory LoginUser(final String email, final String password) =
      _$LoginUserImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutUserImplCopyWith<$Res> {
  factory _$$LogoutUserImplCopyWith(
          _$LogoutUserImpl value, $Res Function(_$LogoutUserImpl) then) =
      __$$LogoutUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutUserImpl>
    implements _$$LogoutUserImplCopyWith<$Res> {
  __$$LogoutUserImplCopyWithImpl(
      _$LogoutUserImpl _value, $Res Function(_$LogoutUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutUserImpl implements LogoutUser {
  const _$LogoutUserImpl();

  @override
  String toString() {
    return 'AuthEvent.logoutUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String username, XFile? image)
        registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() checkAutoLogin,
    required TResult Function(String userId, XFile image) updateProfileImage,
  }) {
    return logoutUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? checkAutoLogin,
    TResult? Function(String userId, XFile image)? updateProfileImage,
  }) {
    return logoutUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? checkAutoLogin,
    TResult Function(String userId, XFile image)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(LogoutUser value) logoutUser,
    required TResult Function(CheckAutoLogin value) checkAutoLogin,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
  }) {
    return logoutUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(LoginUser value)? loginUser,
    TResult? Function(LogoutUser value)? logoutUser,
    TResult? Function(CheckAutoLogin value)? checkAutoLogin,
    TResult? Function(UpdateProfileImage value)? updateProfileImage,
  }) {
    return logoutUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LogoutUser value)? logoutUser,
    TResult Function(CheckAutoLogin value)? checkAutoLogin,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser(this);
    }
    return orElse();
  }
}

abstract class LogoutUser implements AuthEvent {
  const factory LogoutUser() = _$LogoutUserImpl;
}

/// @nodoc
abstract class _$$CheckAutoLoginImplCopyWith<$Res> {
  factory _$$CheckAutoLoginImplCopyWith(_$CheckAutoLoginImpl value,
          $Res Function(_$CheckAutoLoginImpl) then) =
      __$$CheckAutoLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAutoLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAutoLoginImpl>
    implements _$$CheckAutoLoginImplCopyWith<$Res> {
  __$$CheckAutoLoginImplCopyWithImpl(
      _$CheckAutoLoginImpl _value, $Res Function(_$CheckAutoLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckAutoLoginImpl implements CheckAutoLogin {
  const _$CheckAutoLoginImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAutoLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAutoLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String username, XFile? image)
        registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() checkAutoLogin,
    required TResult Function(String userId, XFile image) updateProfileImage,
  }) {
    return checkAutoLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? checkAutoLogin,
    TResult? Function(String userId, XFile image)? updateProfileImage,
  }) {
    return checkAutoLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? checkAutoLogin,
    TResult Function(String userId, XFile image)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (checkAutoLogin != null) {
      return checkAutoLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(LogoutUser value) logoutUser,
    required TResult Function(CheckAutoLogin value) checkAutoLogin,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
  }) {
    return checkAutoLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(LoginUser value)? loginUser,
    TResult? Function(LogoutUser value)? logoutUser,
    TResult? Function(CheckAutoLogin value)? checkAutoLogin,
    TResult? Function(UpdateProfileImage value)? updateProfileImage,
  }) {
    return checkAutoLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LogoutUser value)? logoutUser,
    TResult Function(CheckAutoLogin value)? checkAutoLogin,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (checkAutoLogin != null) {
      return checkAutoLogin(this);
    }
    return orElse();
  }
}

abstract class CheckAutoLogin implements AuthEvent {
  const factory CheckAutoLogin() = _$CheckAutoLoginImpl;
}

/// @nodoc
abstract class _$$UpdateProfileImageImplCopyWith<$Res> {
  factory _$$UpdateProfileImageImplCopyWith(_$UpdateProfileImageImpl value,
          $Res Function(_$UpdateProfileImageImpl) then) =
      __$$UpdateProfileImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, XFile image});
}

/// @nodoc
class __$$UpdateProfileImageImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateProfileImageImpl>
    implements _$$UpdateProfileImageImplCopyWith<$Res> {
  __$$UpdateProfileImageImplCopyWithImpl(_$UpdateProfileImageImpl _value,
      $Res Function(_$UpdateProfileImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? image = null,
  }) {
    return _then(_$UpdateProfileImageImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$UpdateProfileImageImpl implements UpdateProfileImage {
  const _$UpdateProfileImageImpl(this.userId, this.image);

  @override
  final String userId;
  @override
  final XFile image;

  @override
  String toString() {
    return 'AuthEvent.updateProfileImage(userId: $userId, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileImageImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, image);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileImageImplCopyWith<_$UpdateProfileImageImpl> get copyWith =>
      __$$UpdateProfileImageImplCopyWithImpl<_$UpdateProfileImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, String username, XFile? image)
        registerUser,
    required TResult Function(String email, String password) loginUser,
    required TResult Function() logoutUser,
    required TResult Function() checkAutoLogin,
    required TResult Function(String userId, XFile image) updateProfileImage,
  }) {
    return updateProfileImage(userId, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? logoutUser,
    TResult? Function()? checkAutoLogin,
    TResult? Function(String userId, XFile image)? updateProfileImage,
  }) {
    return updateProfileImage?.call(userId, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String email, String password, String username, XFile? image)?
        registerUser,
    TResult Function(String email, String password)? loginUser,
    TResult Function()? logoutUser,
    TResult Function()? checkAutoLogin,
    TResult Function(String userId, XFile image)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (updateProfileImage != null) {
      return updateProfileImage(userId, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(LogoutUser value) logoutUser,
    required TResult Function(CheckAutoLogin value) checkAutoLogin,
    required TResult Function(UpdateProfileImage value) updateProfileImage,
  }) {
    return updateProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(LoginUser value)? loginUser,
    TResult? Function(LogoutUser value)? logoutUser,
    TResult? Function(CheckAutoLogin value)? checkAutoLogin,
    TResult? Function(UpdateProfileImage value)? updateProfileImage,
  }) {
    return updateProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(LoginUser value)? loginUser,
    TResult Function(LogoutUser value)? logoutUser,
    TResult Function(CheckAutoLogin value)? checkAutoLogin,
    TResult Function(UpdateProfileImage value)? updateProfileImage,
    required TResult orElse(),
  }) {
    if (updateProfileImage != null) {
      return updateProfileImage(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileImage implements AuthEvent {
  const factory UpdateProfileImage(final String userId, final XFile image) =
      _$UpdateProfileImageImpl;

  String get userId;
  XFile get image;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileImageImplCopyWith<_$UpdateProfileImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel user) success,
    required TResult Function(String error) failure,
    required TResult Function() uploadedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel user)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? uploadedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel user)? success,
    TResult Function(String error)? failure,
    TResult Function()? uploadedSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthUploadedSuccess value) uploadedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthSuccess value)? success,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthUploadedSuccess value)? uploadedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthUploadedSuccess value)? uploadedSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthInitialImpl implements AuthInitial {
  const _$AuthInitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel user) success,
    required TResult Function(String error) failure,
    required TResult Function() uploadedSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel user)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? uploadedSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel user)? success,
    TResult Function(String error)? failure,
    TResult Function()? uploadedSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthUploadedSuccess value) uploadedSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthSuccess value)? success,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthUploadedSuccess value)? uploadedSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthUploadedSuccess value)? uploadedSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial() = _$AuthInitialImpl;
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<$Res> {
  factory _$$AuthLoadingImplCopyWith(
          _$AuthLoadingImpl value, $Res Function(_$AuthLoadingImpl) then) =
      __$$AuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingImpl>
    implements _$$AuthLoadingImplCopyWith<$Res> {
  __$$AuthLoadingImplCopyWithImpl(
      _$AuthLoadingImpl _value, $Res Function(_$AuthLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthLoadingImpl implements AuthLoading {
  const _$AuthLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel user) success,
    required TResult Function(String error) failure,
    required TResult Function() uploadedSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel user)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? uploadedSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel user)? success,
    TResult Function(String error)? failure,
    TResult Function()? uploadedSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthUploadedSuccess value) uploadedSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthSuccess value)? success,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthUploadedSuccess value)? uploadedSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthUploadedSuccess value)? uploadedSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoadingImpl;
}

/// @nodoc
abstract class _$$AuthSuccessImplCopyWith<$Res> {
  factory _$$AuthSuccessImplCopyWith(
          _$AuthSuccessImpl value, $Res Function(_$AuthSuccessImpl) then) =
      __$$AuthSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$AuthSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSuccessImpl>
    implements _$$AuthSuccessImplCopyWith<$Res> {
  __$$AuthSuccessImplCopyWithImpl(
      _$AuthSuccessImpl _value, $Res Function(_$AuthSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$AuthSuccessImpl implements AuthSuccess {
  const _$AuthSuccessImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSuccessImplCopyWith<_$AuthSuccessImpl> get copyWith =>
      __$$AuthSuccessImplCopyWithImpl<_$AuthSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel user) success,
    required TResult Function(String error) failure,
    required TResult Function() uploadedSuccess,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel user)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? uploadedSuccess,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel user)? success,
    TResult Function(String error)? failure,
    TResult Function()? uploadedSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthUploadedSuccess value) uploadedSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthSuccess value)? success,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthUploadedSuccess value)? uploadedSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthUploadedSuccess value)? uploadedSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthSuccess implements AuthState {
  const factory AuthSuccess(final UserModel user) = _$AuthSuccessImpl;

  UserModel get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSuccessImplCopyWith<_$AuthSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
          _$AuthFailureImpl value, $Res Function(_$AuthFailureImpl) then) =
      __$$AuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
      _$AuthFailureImpl _value, $Res Function(_$AuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailureImpl implements AuthFailure {
  const _$AuthFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel user) success,
    required TResult Function(String error) failure,
    required TResult Function() uploadedSuccess,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel user)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? uploadedSuccess,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel user)? success,
    TResult Function(String error)? failure,
    TResult Function()? uploadedSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthUploadedSuccess value) uploadedSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthSuccess value)? success,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthUploadedSuccess value)? uploadedSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthUploadedSuccess value)? uploadedSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements AuthState {
  const factory AuthFailure(final String error) = _$AuthFailureImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthUploadedSuccessImplCopyWith<$Res> {
  factory _$$AuthUploadedSuccessImplCopyWith(_$AuthUploadedSuccessImpl value,
          $Res Function(_$AuthUploadedSuccessImpl) then) =
      __$$AuthUploadedSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUploadedSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthUploadedSuccessImpl>
    implements _$$AuthUploadedSuccessImplCopyWith<$Res> {
  __$$AuthUploadedSuccessImplCopyWithImpl(_$AuthUploadedSuccessImpl _value,
      $Res Function(_$AuthUploadedSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthUploadedSuccessImpl implements AuthUploadedSuccess {
  const _$AuthUploadedSuccessImpl();

  @override
  String toString() {
    return 'AuthState.uploadedSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUploadedSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel user) success,
    required TResult Function(String error) failure,
    required TResult Function() uploadedSuccess,
  }) {
    return uploadedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel user)? success,
    TResult? Function(String error)? failure,
    TResult? Function()? uploadedSuccess,
  }) {
    return uploadedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel user)? success,
    TResult Function(String error)? failure,
    TResult Function()? uploadedSuccess,
    required TResult orElse(),
  }) {
    if (uploadedSuccess != null) {
      return uploadedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthUploadedSuccess value) uploadedSuccess,
  }) {
    return uploadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthSuccess value)? success,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthUploadedSuccess value)? uploadedSuccess,
  }) {
    return uploadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthUploadedSuccess value)? uploadedSuccess,
    required TResult orElse(),
  }) {
    if (uploadedSuccess != null) {
      return uploadedSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthUploadedSuccess implements AuthState {
  const factory AuthUploadedSuccess() = _$AuthUploadedSuccessImpl;
}
