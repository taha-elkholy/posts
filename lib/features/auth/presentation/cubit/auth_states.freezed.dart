// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() sendResetEmail,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnAuthenticatedState value) unAuthenticated,
    required TResult Function(SendResetEmailState value) sendResetEmail,
    required TResult Function(AuthErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatesCopyWith<$Res> {
  factory $AuthStatesCopyWith(
          AuthStates value, $Res Function(AuthStates) then) =
      _$AuthStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStatesCopyWithImpl<$Res> implements $AuthStatesCopyWith<$Res> {
  _$AuthStatesCopyWithImpl(this._value, this._then);

  final AuthStates _value;
  // ignore: unused_field
  final $Res Function(AuthStates) _then;
}

/// @nodoc
abstract class _$$AuthInitialStateCopyWith<$Res> {
  factory _$$AuthInitialStateCopyWith(
          _$AuthInitialState value, $Res Function(_$AuthInitialState) then) =
      __$$AuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialStateCopyWithImpl<$Res>
    extends _$AuthStatesCopyWithImpl<$Res>
    implements _$$AuthInitialStateCopyWith<$Res> {
  __$$AuthInitialStateCopyWithImpl(
      _$AuthInitialState _value, $Res Function(_$AuthInitialState) _then)
      : super(_value, (v) => _then(v as _$AuthInitialState));

  @override
  _$AuthInitialState get _value => super._value as _$AuthInitialState;
}

/// @nodoc

class _$AuthInitialState implements AuthInitialState {
  const _$AuthInitialState();

  @override
  String toString() {
    return 'AuthStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() sendResetEmail,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnAuthenticatedState value) unAuthenticated,
    required TResult Function(SendResetEmailState value) sendResetEmail,
    required TResult Function(AuthErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitialState implements AuthStates {
  const factory AuthInitialState() = _$AuthInitialState;
}

/// @nodoc
abstract class _$$AuthLoadingStateCopyWith<$Res> {
  factory _$$AuthLoadingStateCopyWith(
          _$AuthLoadingState value, $Res Function(_$AuthLoadingState) then) =
      __$$AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthStatesCopyWithImpl<$Res>
    implements _$$AuthLoadingStateCopyWith<$Res> {
  __$$AuthLoadingStateCopyWithImpl(
      _$AuthLoadingState _value, $Res Function(_$AuthLoadingState) _then)
      : super(_value, (v) => _then(v as _$AuthLoadingState));

  @override
  _$AuthLoadingState get _value => super._value as _$AuthLoadingState;
}

/// @nodoc

class _$AuthLoadingState implements AuthLoadingState {
  const _$AuthLoadingState();

  @override
  String toString() {
    return 'AuthStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() sendResetEmail,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnAuthenticatedState value) unAuthenticated,
    required TResult Function(SendResetEmailState value) sendResetEmail,
    required TResult Function(AuthErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoadingState implements AuthStates {
  const factory AuthLoadingState() = _$AuthLoadingState;
}

/// @nodoc
abstract class _$$AuthenticatedStateCopyWith<$Res> {
  factory _$$AuthenticatedStateCopyWith(_$AuthenticatedState value,
          $Res Function(_$AuthenticatedState) then) =
      __$$AuthenticatedStateCopyWithImpl<$Res>;
  $Res call({UserEntity user});
}

/// @nodoc
class __$$AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStatesCopyWithImpl<$Res>
    implements _$$AuthenticatedStateCopyWith<$Res> {
  __$$AuthenticatedStateCopyWithImpl(
      _$AuthenticatedState _value, $Res Function(_$AuthenticatedState) _then)
      : super(_value, (v) => _then(v as _$AuthenticatedState));

  @override
  _$AuthenticatedState get _value => super._value as _$AuthenticatedState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthenticatedState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$AuthenticatedState implements AuthenticatedState {
  const _$AuthenticatedState({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'AuthStates.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$AuthenticatedStateCopyWith<_$AuthenticatedState> get copyWith =>
      __$$AuthenticatedStateCopyWithImpl<_$AuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() sendResetEmail,
    required TResult Function(String errorMessage) error,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnAuthenticatedState value) unAuthenticated,
    required TResult Function(SendResetEmailState value) sendResetEmail,
    required TResult Function(AuthErrorState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedState implements AuthStates {
  const factory AuthenticatedState({required final UserEntity user}) =
      _$AuthenticatedState;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$AuthenticatedStateCopyWith<_$AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthenticatedStateCopyWith<$Res> {
  factory _$$UnAuthenticatedStateCopyWith(_$UnAuthenticatedState value,
          $Res Function(_$UnAuthenticatedState) then) =
      __$$UnAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStatesCopyWithImpl<$Res>
    implements _$$UnAuthenticatedStateCopyWith<$Res> {
  __$$UnAuthenticatedStateCopyWithImpl(_$UnAuthenticatedState _value,
      $Res Function(_$UnAuthenticatedState) _then)
      : super(_value, (v) => _then(v as _$UnAuthenticatedState));

  @override
  _$UnAuthenticatedState get _value => super._value as _$UnAuthenticatedState;
}

/// @nodoc

class _$UnAuthenticatedState implements UnAuthenticatedState {
  const _$UnAuthenticatedState();

  @override
  String toString() {
    return 'AuthStates.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() sendResetEmail,
    required TResult Function(String errorMessage) error,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnAuthenticatedState value) unAuthenticated,
    required TResult Function(SendResetEmailState value) sendResetEmail,
    required TResult Function(AuthErrorState value) error,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticatedState implements AuthStates {
  const factory UnAuthenticatedState() = _$UnAuthenticatedState;
}

/// @nodoc
abstract class _$$SendResetEmailStateCopyWith<$Res> {
  factory _$$SendResetEmailStateCopyWith(_$SendResetEmailState value,
          $Res Function(_$SendResetEmailState) then) =
      __$$SendResetEmailStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendResetEmailStateCopyWithImpl<$Res>
    extends _$AuthStatesCopyWithImpl<$Res>
    implements _$$SendResetEmailStateCopyWith<$Res> {
  __$$SendResetEmailStateCopyWithImpl(
      _$SendResetEmailState _value, $Res Function(_$SendResetEmailState) _then)
      : super(_value, (v) => _then(v as _$SendResetEmailState));

  @override
  _$SendResetEmailState get _value => super._value as _$SendResetEmailState;
}

/// @nodoc

class _$SendResetEmailState implements SendResetEmailState {
  const _$SendResetEmailState();

  @override
  String toString() {
    return 'AuthStates.sendResetEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendResetEmailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() sendResetEmail,
    required TResult Function(String errorMessage) error,
  }) {
    return sendResetEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
  }) {
    return sendResetEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (sendResetEmail != null) {
      return sendResetEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnAuthenticatedState value) unAuthenticated,
    required TResult Function(SendResetEmailState value) sendResetEmail,
    required TResult Function(AuthErrorState value) error,
  }) {
    return sendResetEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
  }) {
    return sendResetEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (sendResetEmail != null) {
      return sendResetEmail(this);
    }
    return orElse();
  }
}

abstract class SendResetEmailState implements AuthStates {
  const factory SendResetEmailState() = _$SendResetEmailState;
}

/// @nodoc
abstract class _$$AuthErrorStateCopyWith<$Res> {
  factory _$$AuthErrorStateCopyWith(
          _$AuthErrorState value, $Res Function(_$AuthErrorState) then) =
      __$$AuthErrorStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AuthErrorStateCopyWithImpl<$Res>
    extends _$AuthStatesCopyWithImpl<$Res>
    implements _$$AuthErrorStateCopyWith<$Res> {
  __$$AuthErrorStateCopyWithImpl(
      _$AuthErrorState _value, $Res Function(_$AuthErrorState) _then)
      : super(_value, (v) => _then(v as _$AuthErrorState));

  @override
  _$AuthErrorState get _value => super._value as _$AuthErrorState;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$AuthErrorState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorState implements AuthErrorState {
  const _$AuthErrorState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthStates.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorState &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$AuthErrorStateCopyWith<_$AuthErrorState> get copyWith =>
      __$$AuthErrorStateCopyWithImpl<_$AuthErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function() sendResetEmail,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function()? sendResetEmail,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnAuthenticatedState value) unAuthenticated,
    required TResult Function(SendResetEmailState value) sendResetEmail,
    required TResult Function(AuthErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnAuthenticatedState value)? unAuthenticated,
    TResult Function(SendResetEmailState value)? sendResetEmail,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthErrorState implements AuthStates {
  const factory AuthErrorState({required final String errorMessage}) =
      _$AuthErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$AuthErrorStateCopyWith<_$AuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
