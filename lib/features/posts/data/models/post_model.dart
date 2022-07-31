class PostModel {
  int? postLocalId;
  final String postUserId;
  final String postId;
  final String content;
  final String imageUrl;
  final String userImageUrl;

  // list of user ids
  final List<String> likes;
  final bool isSaved;

  PostModel({
    this.postLocalId,
    required this.postUserId,
    required this.postId,
    required this.content,
    required this.imageUrl,
    required this.userImageUrl,
    required this.likes,
    this.isSaved = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'postLocalId': postLocalId,
      'uId': postUserId,
      'postId': postId,
      'content': content,
      'imageUrl': imageUrl,
      'userImageUrl': userImageUrl,
      'likes': likes,
      'isSaved': isSaved,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      postLocalId: map['postLocalId'] as int?,
      postUserId: map['uId'] as String,
      postId: map['postId'] as String,
      content: map['content'] as String,
      imageUrl: map['imageUrl'] as String,
      userImageUrl: map['userImageUrl'] as String,
      likes: List<String>.from(map['likes']),
      isSaved: map['isSaved'] as bool,
    );
  }

  PostModel copyWith({
    int? postLocalId,
    String? postUserId,
    String? postId,
    String? content,
    String? imageUrl,
    String? userImageUrl,
    List<String>? likes,
    bool? isSaved,
  }) {
    return PostModel(
      postLocalId: postLocalId ?? this.postLocalId,
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
