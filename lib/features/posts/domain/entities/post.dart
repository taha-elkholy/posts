import 'package:social_task/utilities/utilities.dart';

class Post {
  final int? postLocalId;
  final String postUserId;
  final String content;
  final String postId;
  final String imageUrl;
  final String userImageUrl;
  final List<String> likes;
  final bool isSaved;

  const Post({
    required this.postUserId,
    required this.content,
    required this.postId,
    this.postLocalId,
    this.imageUrl = '',
    this.userImageUrl = '',
    required this.likes,
    this.isSaved = false,
  });

  bool get isLiked => likes.any((element) => element == currentUser.uid);

  Post copyWith({
    int? postLocalId,
    String? postUserId,
    String? postId,
    String? content,
    String? imageUrl,
    String? userImageUrl,
    List<String>? likes,
    bool? isSaved,
  }) {
    return Post(
      postLocalId: null, // if get new copy
      postUserId: postUserId ?? this.postUserId,
      postId: postId ?? this.postId,
      content: content ?? this.content,
      imageUrl: imageUrl ?? this.imageUrl,
      userImageUrl: userImageUrl ?? this.userImageUrl,
      likes: likes ?? this.likes,
      isSaved: isSaved ?? this.isSaved,
    );
  }
}
