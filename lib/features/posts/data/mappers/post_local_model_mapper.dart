import 'package:social_task/features/posts/data/models/post_local_model.dart';
import 'package:social_task/features/posts/data/models/post_model.dart';

extension PostLocaleModelMapper on PostLocalModel {
  PostModel get fromLocalModel => PostModel(
        postLocalId: id,
        postUserId: postUserId,
        postId: postId,
        content: content,
        imageUrl: imageUrl,
        userImageUrl: userImageUrl,
        isSaved: isSaved,
        likes: likes,
      );
}

extension PostMapper on PostModel {
  PostLocalModel get toLocalModel => PostLocalModel(
        id: postLocalId,
        postUserId: postUserId,
        postId: postId,
        content: content,
        imageUrl: imageUrl,
        userImageUrl: userImageUrl,
        isSaved: isSaved,
        likes: likes,
      );
}
