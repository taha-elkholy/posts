import 'package:social_task/features/posts/data/models/post_model.dart';
import 'package:social_task/features/posts/domain/entities/post.dart';

extension PostModelMapper on PostModel {
  Post get fromModel => Post(
        postLocalId: postLocalId,
        postUserId: postUserId,
        postId: postId,
        content: content,
        imageUrl: imageUrl,
        userImageUrl: userImageUrl,
        isSaved: isSaved,
        likes: likes,
      );
}

extension PostMapper on Post {
  PostModel get toModel => PostModel(
        postLocalId: postLocalId,
        postUserId: postUserId,
        postId: postId,
        content: content,
        imageUrl: imageUrl,
        userImageUrl: userImageUrl,
        isSaved: isSaved,
        likes: likes,
      );
}
