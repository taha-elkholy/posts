import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_task/features/posts/domain/entities/post.dart';

part 'post_states.freezed.dart';

@freezed
class PostStates with _$PostStates {
  const factory PostStates.initial() = _PostInitialState;

  // live states
  const factory PostStates.liveLoading() = _PostLiveLoadingState;

  const factory PostStates.liveError({required String errorMessage}) =
      PostLiveErrorState;

  const factory PostStates.liveLoaded({required List<Post> posts}) =
      _PostLiveLoadedState;

  const factory PostStates.liveAdded() = _PostLiveAddedState;

  const factory PostStates.liveUpdated() = _PostLiveUpdatedState;

  // locale states
  const factory PostStates.localCreated() = _PostLocalCreatedState;

  const factory PostStates.localLoading() = _PostLocalLoadingState;

  const factory PostStates.localError({required String errorMessage}) =
      PostLocalErrorState;

  const factory PostStates.localLoaded({required List<Post> posts}) =
      _PostLocalLoadedState;

  const factory PostStates.localSaved() = _PostLocalSavedState;

  const factory PostStates.localUnSaved() = _PostLocalUnSavedState;
}
