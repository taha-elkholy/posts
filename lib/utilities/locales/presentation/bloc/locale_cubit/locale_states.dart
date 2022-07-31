import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_states.freezed.dart';

@freezed
class LocaleStates with _$LocaleStates {
  const factory LocaleStates.initial() = _LocaleInitialState;

  const factory LocaleStates.changed({required Locale locale}) =
      _LocaleChangedState;

  const factory LocaleStates.loadedFromShared({required Locale locale}) =
      _LocaleLoadedFromSharedState;

  const factory LocaleStates.error({required String errorMessage}) =
      _LocaleErrorState;
}
