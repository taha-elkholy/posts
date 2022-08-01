import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/domain/entities/upload_image_param.dart';
import 'package:social_task/core/domain/use_cases/upload_image_use_case.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/features/posts/domain/entities/post.dart';
import 'package:social_task/features/posts/domain/entities/post_param.dart';
import 'package:social_task/features/posts/domain/use_case/close_local_database_use_case.dart';
import 'package:social_task/features/posts/domain/use_case/create_local_database_use_case.dart';
import 'package:social_task/features/posts/domain/use_case/get_posts_use_case.dart';
import 'package:social_task/features/posts/domain/use_case/remove_post_from_local_use_case.dart';
import 'package:social_task/features/posts/domain/use_case/set_post_use_case.dart';
import 'package:social_task/features/posts/presentation/cubit/post_states.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/enums/posts_source_enum.dart';
import 'package:social_task/utilities/utilities.dart';

@injectable
class PostCubit extends Cubit<PostStates> {
  PostCubit(
      this._getPostsUseCase,
      this._setPostsUseCase,
      this._uploadImageUseCase,
      this._createLocaleDatabaseUseCase,
      this._removePostFromLocalUseCase,
      this._closeLocalDatabaseUseCase)
      : super(const PostStates.initial());

  final GetPostsUseCase _getPostsUseCase;
  final SetPostsUseCase _setPostsUseCase;
  final UploadImageUseCase _uploadImageUseCase;
  final CreateLocaleDatabaseUseCase _createLocaleDatabaseUseCase;
  final RemovePostFromLocalUseCase _removePostFromLocalUseCase;
  final CloseLocalDatabaseUseCase _closeLocalDatabaseUseCase;

  /////////////Live/////////////
  Future<void> addNewPostWithImage(
      {required UploadImageParam param, required Post post}) async {
    emit(const PostStates.liveLoading());

    // upload image first to get url
    final result = await _uploadImageUseCase(param);

    result.fold(
      (failure) => emit(PostStates.liveError(errorMessage: failure.message)),
      (url) async {
        // in success case set the post data
        final postWithImage = post.copyWith(imageUrl: url);

        PostParam param =
            PostParam(source: PostsSource.live, post: postWithImage);

        final result = await _setPostsUseCase(param);
        emit(
          result.fold(
            (failure) => PostStates.liveError(errorMessage: failure.message),
            (_) => const PostStates.liveAdded(),
          ),
        );
      },
    );
  }

  Future<void> likeAndDislikeAPost({required Post post}) async {
    List<String> likes = post.likes;

    post.isLiked ? likes.remove(currentUser.uid) : likes.add(currentUser.uid);

    final newPost = post.copyWith(likes: likes);
    final result = await _setPostsUseCase(
        PostParam(source: PostsSource.live, post: newPost));
    result.fold((_) => null, (_) => getLivePosts());
  }

  Future<void> shareThePost(
      {required BuildContext context, required Post post}) async {
    if (currentUser.uid == post.postUserId) {
      // then you can not share your post
      showSnackBar(context: context, content: S.current.canNotShare);
    } else {
      Post sharedPost = post.copyWith(
        postId: DateTime.now().toIso8601String(),
        postLocalId: null,
        postUserId: currentUser.uid,
        userImageUrl: currentUser.image,
        isSaved: false,
        content:
            '${currentUser.firstName} ${currentUser.lastName} ${S.current.shredThisPost}\n ${post.content}',
        likes: [],
      );

      final result = await _setPostsUseCase(
          PostParam(source: PostsSource.live, post: sharedPost));
      result.fold((_) => null, (_) => getLivePosts());
    }
  }

  Future<void> getLivePosts() async {
    emit(const PostStates.liveLoading());

    final result = await _getPostsUseCase(PostsSource.live);
    emit(
      result.fold(
        (failure) => PostStates.liveError(errorMessage: failure.message),
        (posts) => PostStates.liveLoaded(posts: posts),
      ),
    );
  }

  /////////////Local/////////////
  Future<void> createLocaleDatabase() async {
    emit(const PostStates.localLoading());

    final result = await _createLocaleDatabaseUseCase(NoParams());
    emit(
      result.fold(
        (failure) => PostStates.localError(errorMessage: failure.message),
        (posts) => const PostStates.localCreated(),
      ),
    );
  }

  Future<void> getLocalPosts() async {
    emit(const PostStates.localLoading());

    final result = await _getPostsUseCase(PostsSource.local);
    emit(
      result.fold(
        (failure) => PostStates.localError(errorMessage: failure.message),
        (posts) => PostStates.localLoaded(posts: posts),
      ),
    );
  }

  Future<void> localSaveUnSave({required Post post}) async {
    post.isSaved == true
        ? _removePostFromLocal(post: post)
        : _addPostToLocal(post: post);
  }

  Future<void> _addPostToLocal({required Post post}) async {
    final updatedPost = post.copyWith(
      isSaved: !post.isSaved,
    );
    final liveResult = await _setPostsUseCase(
        PostParam(source: PostsSource.live, post: updatedPost));

    liveResult
        .fold((failure) => PostStates.liveError(errorMessage: failure.message),
            (_) async {
      // save to local
      final localResult = await _setPostsUseCase(
          PostParam(source: PostsSource.local, post: updatedPost));
      emit(
        localResult.fold(
          (failure) => PostStates.localError(errorMessage: failure.message),
          (_) => const PostStates.localSaved(),
        ),
      );
    });
  }

  Future<void> _removePostFromLocal({required Post post}) async {
    final updatedPost = post.copyWith(
      isSaved: !post.isSaved,
    );

    // remove from local
    final localResult = await _removePostFromLocalUseCase(post.postLocalId!);

    localResult.fold(
      (localFailure) =>
          emit(PostStates.localError(errorMessage: localFailure.message)),
      (_) async {
        // remove from live
        final liveResult = await _setPostsUseCase(
            PostParam(source: PostsSource.live, post: updatedPost));
        liveResult.fold(
            (liveFailure) => emit(
                  PostStates.liveError(errorMessage: liveFailure.message),
                ),
            (_) => emit(const PostStates.localUnSaved()));
      },
    );
  }

  Future<void> closeDatabase() async {
    await _closeLocalDatabaseUseCase.call(NoParams());
  }

  @override
  Future<void> close() {
    closeDatabase();
    return super.close();
  }
}
