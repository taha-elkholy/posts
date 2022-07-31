// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentIndex) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentIndex)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentIndex)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStatesCopyWith<$Res> {
  factory $HomeStatesCopyWith(
          HomeStates value, $Res Function(HomeStates) then) =
      _$HomeStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStatesCopyWithImpl<$Res> implements $HomeStatesCopyWith<$Res> {
  _$HomeStatesCopyWithImpl(this._value, this._then);

  final HomeStates _value;
  // ignore: unused_field
  final $Res Function(HomeStates) _then;
}

/// @nodoc
abstract class _$$_HomeInitialStateCopyWith<$Res> {
  factory _$$_HomeInitialStateCopyWith(
          _$_HomeInitialState value, $Res Function(_$_HomeInitialState) then) =
      __$$_HomeInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeInitialStateCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res>
    implements _$$_HomeInitialStateCopyWith<$Res> {
  __$$_HomeInitialStateCopyWithImpl(
      _$_HomeInitialState _value, $Res Function(_$_HomeInitialState) _then)
      : super(_value, (v) => _then(v as _$_HomeInitialState));

  @override
  _$_HomeInitialState get _value => super._value as _$_HomeInitialState;
}

/// @nodoc

class _$_HomeInitialState implements _HomeInitialState {
  const _$_HomeInitialState();

  @override
  String toString() {
    return 'HomeStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentIndex) changed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentIndex)? changed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentIndex)? changed,
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
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) changed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? changed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeInitialState implements HomeStates {
  const factory _HomeInitialState() = _$_HomeInitialState;
}

/// @nodoc
abstract class _$$_HomeLoadingStateCopyWith<$Res> {
  factory _$$_HomeLoadingStateCopyWith(
          _$_HomeLoadingState value, $Res Function(_$_HomeLoadingState) then) =
      __$$_HomeLoadingStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class __$$_HomeLoadingStateCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res>
    implements _$$_HomeLoadingStateCopyWith<$Res> {
  __$$_HomeLoadingStateCopyWithImpl(
      _$_HomeLoadingState _value, $Res Function(_$_HomeLoadingState) _then)
      : super(_value, (v) => _then(v as _$_HomeLoadingState));

  @override
  _$_HomeLoadingState get _value => super._value as _$_HomeLoadingState;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_$_HomeLoadingState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeLoadingState implements _HomeLoadingState {
  const _$_HomeLoadingState({required this.currentIndex});

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'HomeStates.changed(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLoadingState &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentIndex));

  @JsonKey(ignore: true)
  @override
  _$$_HomeLoadingStateCopyWith<_$_HomeLoadingState> get copyWith =>
      __$$_HomeLoadingStateCopyWithImpl<_$_HomeLoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentIndex) changed,
  }) {
    return changed(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentIndex)? changed,
  }) {
    return changed?.call(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentIndex)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(currentIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadingState implements HomeStates {
  const factory _HomeLoadingState({required final int currentIndex}) =
      _$_HomeLoadingState;

  int get currentIndex;
  @JsonKey(ignore: true)
  _$$_HomeLoadingStateCopyWith<_$_HomeLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}
