import 'package:flutter/material.dart';

class Constants {
  /// Locale details
  static const englishLocale = Locale('en', 'US');
  static const arabicLocale = Locale('ar', 'EG');
  static const String currentLocaleCodeKey = 'locale_key';

  /// Strings
  static const String fontFamily = 'Almarai';

  // locale database
  static const String localDatabaseName = "social_task.db";
  // column names
  static const String tablePosts = "posts";
  static const String postLocalId = "_id";
  static const String postId = "post_id";
  static const String postUserId = "post_u_id";
  static const String content = "content";
  static const String imageUrl = "image_url";
  static const String userImageUrl = "user_image_url";
  static const String likes = "likes";
  static const String isSaved = "is_saved";

  /// Shared Preferences
}
