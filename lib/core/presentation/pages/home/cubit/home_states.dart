import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_states.freezed.dart';

@freezed
class HomeStates with _$HomeStates {
  const factory HomeStates.initial() = _HomeInitialState;

  const factory HomeStates.changed({required int currentIndex}) =
      _HomeLoadingState;
}
