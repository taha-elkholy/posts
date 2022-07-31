import 'dart:convert';

import 'package:social_task/utilities/constants/constants.dart';

class PostLocalModel {
  late int? id; // for locale db only
  final String postUserId;
  final String postId;
  final String content;
  final String imageUrl;
  final String userImageUrl;
  final List<String> likes;
  final bool isSaved;

  PostLocalModel({
    this.id,
    required this.postUserId,
    required this.postId,
    required this.content,
    required this.imageUrl,
    required this.userImageUrl,
    required this.likes,
    this.isSaved = false,
  });

  Map<String, dynamic> toMap() {
    var map = {
      Constants.postUserId: postUserId,
      Constants.postId: postId,
      Constants.userImageUrl: userImageUrl,
      Constants.imageUrl: imageUrl,
      Constants.content: content,
      Constants.likes: jsonEncode(likes),
      Constants.isSaved: isSaved == true ? 1 : 0
    };
    if (id != null) {
      map[Constants.postLocalId] = id!;
    }
    return map;
  }

  factory PostLocalModel.fromMap(Map<String, dynamic> map) {
    return PostLocalModel(
      id: map[Constants.postLocalId] as int,
      postUserId: map[Constants.postUserId] as String,
      postId: map[Constants.postId] as String,
      content: map[Constants.content] as String,
      imageUrl: map[Constants.imageUrl] as String,
      userImageUrl: map[Constants.userImageUrl] as String,
      likes: List<String>.from(jsonDecode(map[Constants.likes])),
      isSaved: map[Constants.isSaved] == 1 ? true : false,
    );
  }
}
