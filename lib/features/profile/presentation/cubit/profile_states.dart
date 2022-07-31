import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';

part 'profile_states.freezed.dart';

@freezed
class ProfileStates with _$ProfileStates {
  const factory ProfileStates.initial() = _ProfileInitialState;

  const factory ProfileStates.loading() = _ProfileLoadingState;

  const factory ProfileStates.loaded({required UserEntity user}) =
      ProfileLoadedState;

  const factory ProfileStates.updated() = _ProfileUpdatedState;

  const factory ProfileStates.error({required String errorMessage}) =
      ProfileErrorState;
}
