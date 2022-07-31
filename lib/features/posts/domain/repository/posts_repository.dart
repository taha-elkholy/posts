import 'package:dartz/dartz.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/entities/upload_image_param.dart';
import 'package:social_task/features/posts/domain/entities/post.dart';
import 'package:social_task/utilities/enums/posts_source_enum.dart';

abstract class PostsRepository {
  Future<Either<GenericFailure, List<Post>>> getPosts(
      {required PostsSource source});

  Future<Either<GenericFailure, Unit>> setPostData(
      {required PostsSource source, required Post post});

  Future<Either<GenericFailure, String>> uploadPostImage(
      {required UploadImageParam params});

  Future<Either<GenericFailure, Unit>> removeFromLocal(
      {required int localPostId});

  Future<Either<GenericFailure, Unit>> createDatabase();
  Future<Either<GenericFailure, Unit>> closeDatabase();
}
