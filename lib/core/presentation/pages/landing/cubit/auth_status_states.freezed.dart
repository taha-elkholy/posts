// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_status_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthStatusStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusInitialState value) initial,
    required TResult Function(AuthStatusAuthenticated value) unAuthenticated,
    required TResult Function(AuthStatusLoading value) loading,
    required TResult Function(AuthStatusUnAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStatusInitialState value)? initial,
    TResult Function(AuthStatusAuthenticated value)? unAuthenticated,
    TResult Function(AuthStatusLoading value)? loading,
    TResult Function(AuthStatusUnAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusInitialState value)? initial,
    TResult Function(AuthStatusAuthenticated value)? unAuthenticated,
    TResult Function(AuthStatusLoading value)? loading,
    TResult Function(AuthStatusUnAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusStatesCopyWith<$Res> {
  factory $AuthStatusStatesCopyWith(
          AuthStatusStates value, $Res Function(AuthStatusStates) then) =
      _$AuthStatusStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStatusStatesCopyWithImpl<$Res>
    implements $AuthStatusStatesCopyWith<$Res> {
  _$AuthStatusStatesCopyWithImpl(this._value, this._then);

  final AuthStatusStates _value;
  // ignore: unused_field
  final $Res Function(AuthStatusStates) _then;
}

/// @nodoc
abstract class _$$AuthStatusInitialStateCopyWith<$Res> {
  factory _$$AuthStatusInitialStateCopyWith(_$AuthStatusInitialState value,
          $Res Function(_$AuthStatusInitialState) then) =
      __$$AuthStatusInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStatusInitialStateCopyWithImpl<$Res>
    extends _$AuthStatusStatesCopyWithImpl<$Res>
    implements _$$AuthStatusInitialStateCopyWith<$Res> {
  __$$AuthStatusInitialStateCopyWithImpl(_$AuthStatusInitialState _value,
      $Res Function(_$AuthStatusInitialState) _then)
      : super(_value, (v) => _then(v as _$AuthStatusInitialState));

  @override
  _$AuthStatusInitialState get _value =>
      super._value as _$AuthStatusInitialState;
}

/// @nodoc

class _$AuthStatusInitialState implements AuthStatusInitialState {
  const _$AuthStatusInitialState();

  @override
  String toString() {
    return 'AuthStatusStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStatusInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
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
    required TResult Function(AuthStatusInitialState value) initial,
    required TResult Function(AuthStatusAuthenticated value) unAuthenticated,
    required TResult Function(AuthStatusLoading value) loading,
    required TResult Function(AuthStatusUnAuthenticated value) authenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStatusInitialState value)? initial,
    TResult Function(AuthStatusAuthenticated value)? unAuthenticated,
    TResult Function(AuthStatusLoading value)? loading,
    TResult Function(AuthStatusUnAuthenticated value)? authenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusInitialState value)? initial,
    TResult Function(AuthStatusAuthenticated value)? unAuthenticated,
    TResult Function(AuthStatusLoading value)? loading,
    TResult Function(AuthStatusUnAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthStatusInitialState implements AuthStatusStates {
  const factory AuthStatusInitialState() = _$AuthStatusInitialState;
}

/// @nodoc
abstract class _$$AuthStatusAuthenticatedCopyWith<$Res> {
  factory _$$AuthStatusAuthenticatedCopyWith(_$AuthStatusAuthenticated value,
          $Res Function(_$AuthStatusAuthenticated) then) =
      __$$AuthStatusAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStatusAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStatusStatesCopyWithImpl<$Res>
    implements _$$AuthStatusAuthenticatedCopyWith<$Res> {
  __$$AuthStatusAuthenticatedCopyWithImpl(_$AuthStatusAuthenticated _value,
      $Res Function(_$AuthStatusAuthenticated) _then)
      : super(_value, (v) => _then(v as _$AuthStatusAuthenticated));

  @override
  _$AuthStatusAuthenticated get _value =>
      super._value as _$AuthStatusAuthenticated;
}

/// @nodoc

class _$AuthStatusAuthenticated implements AuthStatusAuthenticated {
  const _$AuthStatusAuthenticated();

  @override
  String toString() {
    return 'AuthStatusStates.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
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
    required TResult Function(AuthStatusInitialState value) initial,
    required TResult Function(AuthStatusAuthenticated value) unAuthenticated,
    required TResult Function(AuthStatusLoading value) loading,
    required TResult Function(AuthStatusUnAuthenticated value) authenticated,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStatusInitialState value)? initial,
    TResult Function(AuthStatusAuthenticated value)? unAuthenticated,
    TResult Function(AuthStatusLoading value)? loading,
    TResult Function(AuthStatusUnAuthenticated value)? authenticated,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusInitialState value)? initial,
    TResult Function(AuthStatusAuthenticated value)? unAuthenticated,
    TResult Function(AuthStatusLoading value)? loading,
    TResult Function(AuthStatusUnAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthStatusAuthenticated implements AuthStatusStates {
  const factory AuthStatusAuthenticated() = _$AuthStatusAuthenticated;
}

/// @nodoc
abstract class _$$AuthStatusLoadingCopyWith<$Res> {
  factory _$$AuthStatusLoadingCopyWith(
          _$AuthStatusLoading value, $Res Function(_$AuthStatusLoading) then) =
      __$$AuthStatusLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStatusLoadingCopyWithImpl<$Res>
    extends _$AuthStatusStatesCopyWithImpl<$Res>
    implements _$$AuthStatusLoadingCopyWith<$Res> {
  __$$AuthStatusLoadingCopyWithImpl(
      _$AuthStatusLoading _value, $Res Function(_$AuthStatusLoading) _then)
      : super(_value, (v) => _then(v as _$AuthStatusLoading));

  @override
  _$AuthStatusLoading get _value => super._value as _$AuthStatusLoading;
}

/// @nodoc

class _$AuthStatusLoading implements AuthStatusLoading {
  const _$AuthStatusLoading();

  @override
  String toString() {
    return 'AuthStatusStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStatusLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
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
    required TResult Function(AuthStatusInitialState value) initial,
    required TResult Function(AuthStatusAuthenticated value) unAuthenticated,
    required TResult Function(AuthStatusLoading value) loading,
    required TResult Function(AuthStatusUnAuthenticated value) authenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStatusInitialState value)? initial,
    TResult Function(AuthStatusAuthenticated value)? unAuthenticated,
    TResult Function(AuthStatusLoading value)? loading,
    TResult Function(AuthStatusUnAuthenticated value)? authenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusInitialState value)? initial,
    TResult Function(AuthStatusAuthenticated value)? unAuthenticated,
    TResult Function(AuthStatusLoading value)? loading,
    TResult Function(AuthStatusUnAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStatusLoading implements AuthStatusStates {
  const factory AuthStatusLoading() = _$AuthStatusLoading;
}

/// @nodoc
abstract class _$$AuthStatusUnAuthenticatedCopyWith<$Res> {
  factory _$$AuthStatusUnAuthenticatedCopyWith(
          _$AuthStatusUnAuthenticated value,
          $Res Function(_$AuthStatusUnAuthenticated) then) =
      __$$AuthStatusUnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStatusUnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStatusStatesCopyWithImpl<$Res>
    implements _$$AuthStatusUnAuthenticatedCopyWith<$Res> {
  __$$AuthStatusUnAuthenticatedCopyWithImpl(_$AuthStatusUnAuthenticated _value,
      $Res Function(_$AuthStatusUnAuthenticated) _then)
      : super(_value, (v) => _then(v as _$AuthStatusUnAuthenticated));

  @override
  _$AuthStatusUnAuthenticated get _value =>
      super._value as _$AuthStatusUnAuthenticated;
}

/// @nodoc

class _$AuthStatusUnAuthenticated implements AuthStatusUnAuthenticated {
  const _$AuthStatusUnAuthenticated();

  @override
  String toString() {
    return 'AuthStatusStates.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusUnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStatusInitialState value) initial,
    required TResult Function(AuthStatusAuthenticated value) unAuthenticated,
    required TResult Function(AuthStatusLoading value) loading,
    required TResult Function(AuthStatusUnAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStatusInitialState value)? initial,
    TResult Function(AuthStatusAuthenticated value)? unAuthenticated,
    TResult Function(AuthStatusLoading value)? loading,
    TResult Function(AuthStatusUnAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStatusInitialState value)? initial,
    TResult Function(AuthStatusAuthenticated value)? unAuthenticated,
    TResult Function(AuthStatusLoading value)? loading,
    TResult Function(AuthStatusUnAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthStatusUnAuthenticated implements AuthStatusStates {
  const factory AuthStatusUnAuthenticated() = _$AuthStatusUnAuthenticated;
}
