// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(_ProfileUpdatedState value) updated,
    required TResult Function(ProfileErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStatesCopyWith<$Res> {
  factory $ProfileStatesCopyWith(
          ProfileStates value, $Res Function(ProfileStates) then) =
      _$ProfileStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStatesCopyWithImpl<$Res>
    implements $ProfileStatesCopyWith<$Res> {
  _$ProfileStatesCopyWithImpl(this._value, this._then);

  final ProfileStates _value;
  // ignore: unused_field
  final $Res Function(ProfileStates) _then;
}

/// @nodoc
abstract class _$$_ProfileInitialStateCopyWith<$Res> {
  factory _$$_ProfileInitialStateCopyWith(_$_ProfileInitialState value,
          $Res Function(_$_ProfileInitialState) then) =
      __$$_ProfileInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileInitialStateCopyWithImpl<$Res>
    extends _$ProfileStatesCopyWithImpl<$Res>
    implements _$$_ProfileInitialStateCopyWith<$Res> {
  __$$_ProfileInitialStateCopyWithImpl(_$_ProfileInitialState _value,
      $Res Function(_$_ProfileInitialState) _then)
      : super(_value, (v) => _then(v as _$_ProfileInitialState));

  @override
  _$_ProfileInitialState get _value => super._value as _$_ProfileInitialState;
}

/// @nodoc

class _$_ProfileInitialState implements _ProfileInitialState {
  const _$_ProfileInitialState();

  @override
  String toString() {
    return 'ProfileStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
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
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(_ProfileUpdatedState value) updated,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProfileInitialState implements ProfileStates {
  const factory _ProfileInitialState() = _$_ProfileInitialState;
}

/// @nodoc
abstract class _$$_ProfileLoadingStateCopyWith<$Res> {
  factory _$$_ProfileLoadingStateCopyWith(_$_ProfileLoadingState value,
          $Res Function(_$_ProfileLoadingState) then) =
      __$$_ProfileLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileLoadingStateCopyWithImpl<$Res>
    extends _$ProfileStatesCopyWithImpl<$Res>
    implements _$$_ProfileLoadingStateCopyWith<$Res> {
  __$$_ProfileLoadingStateCopyWithImpl(_$_ProfileLoadingState _value,
      $Res Function(_$_ProfileLoadingState) _then)
      : super(_value, (v) => _then(v as _$_ProfileLoadingState));

  @override
  _$_ProfileLoadingState get _value => super._value as _$_ProfileLoadingState;
}

/// @nodoc

class _$_ProfileLoadingState implements _ProfileLoadingState {
  const _$_ProfileLoadingState();

  @override
  String toString() {
    return 'ProfileStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
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
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(_ProfileUpdatedState value) updated,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoadingState implements ProfileStates {
  const factory _ProfileLoadingState() = _$_ProfileLoadingState;
}

/// @nodoc
abstract class _$$ProfileLoadedStateCopyWith<$Res> {
  factory _$$ProfileLoadedStateCopyWith(_$ProfileLoadedState value,
          $Res Function(_$ProfileLoadedState) then) =
      __$$ProfileLoadedStateCopyWithImpl<$Res>;
  $Res call({UserEntity user});
}

/// @nodoc
class __$$ProfileLoadedStateCopyWithImpl<$Res>
    extends _$ProfileStatesCopyWithImpl<$Res>
    implements _$$ProfileLoadedStateCopyWith<$Res> {
  __$$ProfileLoadedStateCopyWithImpl(
      _$ProfileLoadedState _value, $Res Function(_$ProfileLoadedState) _then)
      : super(_value, (v) => _then(v as _$ProfileLoadedState));

  @override
  _$ProfileLoadedState get _value => super._value as _$ProfileLoadedState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$ProfileLoadedState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$ProfileLoadedState implements ProfileLoadedState {
  const _$ProfileLoadedState({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'ProfileStates.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadedState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$ProfileLoadedStateCopyWith<_$ProfileLoadedState> get copyWith =>
      __$$ProfileLoadedStateCopyWithImpl<_$ProfileLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(_ProfileUpdatedState value) updated,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadedState implements ProfileStates {
  const factory ProfileLoadedState({required final UserEntity user}) =
      _$ProfileLoadedState;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$ProfileLoadedStateCopyWith<_$ProfileLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProfileUpdatedStateCopyWith<$Res> {
  factory _$$_ProfileUpdatedStateCopyWith(_$_ProfileUpdatedState value,
          $Res Function(_$_ProfileUpdatedState) then) =
      __$$_ProfileUpdatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProfileUpdatedStateCopyWithImpl<$Res>
    extends _$ProfileStatesCopyWithImpl<$Res>
    implements _$$_ProfileUpdatedStateCopyWith<$Res> {
  __$$_ProfileUpdatedStateCopyWithImpl(_$_ProfileUpdatedState _value,
      $Res Function(_$_ProfileUpdatedState) _then)
      : super(_value, (v) => _then(v as _$_ProfileUpdatedState));

  @override
  _$_ProfileUpdatedState get _value => super._value as _$_ProfileUpdatedState;
}

/// @nodoc

class _$_ProfileUpdatedState implements _ProfileUpdatedState {
  const _$_ProfileUpdatedState();

  @override
  String toString() {
    return 'ProfileStates.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProfileUpdatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(_ProfileUpdatedState value) updated,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _ProfileUpdatedState implements ProfileStates {
  const factory _ProfileUpdatedState() = _$_ProfileUpdatedState;
}

/// @nodoc
abstract class _$$ProfileErrorStateCopyWith<$Res> {
  factory _$$ProfileErrorStateCopyWith(
          _$ProfileErrorState value, $Res Function(_$ProfileErrorState) then) =
      __$$ProfileErrorStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ProfileErrorStateCopyWithImpl<$Res>
    extends _$ProfileStatesCopyWithImpl<$Res>
    implements _$$ProfileErrorStateCopyWith<$Res> {
  __$$ProfileErrorStateCopyWithImpl(
      _$ProfileErrorState _value, $Res Function(_$ProfileErrorState) _then)
      : super(_value, (v) => _then(v as _$ProfileErrorState));

  @override
  _$ProfileErrorState get _value => super._value as _$ProfileErrorState;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$ProfileErrorState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileErrorState implements ProfileErrorState {
  const _$ProfileErrorState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ProfileStates.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorState &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$ProfileErrorStateCopyWith<_$ProfileErrorState> get copyWith =>
      __$$ProfileErrorStateCopyWithImpl<_$ProfileErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserEntity user) loaded,
    required TResult Function() updated,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserEntity user)? loaded,
    TResult Function()? updated,
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
    required TResult Function(_ProfileInitialState value) initial,
    required TResult Function(_ProfileLoadingState value) loading,
    required TResult Function(ProfileLoadedState value) loaded,
    required TResult Function(_ProfileUpdatedState value) updated,
    required TResult Function(ProfileErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileInitialState value)? initial,
    TResult Function(_ProfileLoadingState value)? loading,
    TResult Function(ProfileLoadedState value)? loaded,
    TResult Function(_ProfileUpdatedState value)? updated,
    TResult Function(ProfileErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileErrorState implements ProfileStates {
  const factory ProfileErrorState({required final String errorMessage}) =
      _$ProfileErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ProfileErrorStateCopyWith<_$ProfileErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
