import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/datasource/remote/storage_datasource.dart';
import 'package:social_task/core/data/error/exceptions/application_exception.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/entities/upload_image_param.dart';
import 'package:social_task/features/posts/data/datasource/local/post_local_datasorce.dart';
import 'package:social_task/features/posts/data/datasource/remote/post_remote_datasorce.dart';
import 'package:social_task/features/posts/data/mappers/post_model_mapper.dart';
import 'package:social_task/features/posts/domain/entities/post.dart';
import 'package:social_task/features/posts/domain/repository/posts_repository.dart';
import 'package:social_task/utilities/enums/posts_source_enum.dart';

@Injectable(as: PostsRepository)
class PostsRepositoryImpl extends PostsRepository {
  final PostLocalDatasource _localDatasource;
  final PostRemoteDatasource _remoteDatasource;
  final StorageDatasource _storageDatasource;

  PostsRepositoryImpl(
      this._localDatasource, this._remoteDatasource, this._storageDatasource);

  @override
  Future<Either<GenericFailure, List<Post>>> getPosts(
      {required PostsSource source}) async {
    if (source == PostsSource.live) {
      // get remote data
      try {
        final postModels = await _remoteDatasource.getPosts();

        return right(postModels.map((post) => post.fromModel).toList());
      } on GenericApplicationException catch (e) {
        return left(mapExceptionToFailure(e));
      }
    } else {
      try {
        final postModels = await _localDatasource.getPosts();

        return right(postModels.map((post) => post.fromModel).toList());
      } on GenericApplicationException catch (e) {
        return left(mapExceptionToFailure(e));
      }
    }
  }

  @override
  Future<Either<GenericFailure, Unit>> setPostData(
      {required PostsSource source, required Post post}) async {
    if (source == PostsSource.live) {
      // set remote data
      try {
        await _remoteDatasource.addPost(post: post.toModel);
        return right(unit);
      } on GenericApplicationException catch (e) {
        return left(mapExceptionToFailure(e));
      }
    } else {
      try {
        await _localDatasource.addPost(post: post.toModel);
        return right(unit);
      } on GenericApplicationException catch (e) {
        return left(mapExceptionToFailure(e));
      }
    }
  }

  @override
  Future<Either<GenericFailure, String>> uploadPostImage(
      {required UploadImageParam params}) async {
    try {
      final url = await _storageDatasource.uploadImage(
          image: params.image, path: params.path);
      return right(url);
    } on GenericApplicationException catch (e) {
      return left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<GenericFailure, Unit>> removeFromLocal(
      {required int localPostId}) async {
    try {
      await _localDatasource.remove(id: localPostId);
      return right(unit);
    } on GenericApplicationException catch (e) {
      return left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<GenericFailure, Unit>> createDatabase() async {
    try {
      await _localDatasource.createDatabase();
      return right(unit);
    } on GenericApplicationException catch (e) {
      return left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<GenericFailure, Unit>> closeDatabase() async {
    try {
      await _localDatasource.closeDatabase();
      return right(unit);
    } on GenericApplicationException catch (e) {
      return left(mapExceptionToFailure(e));
    }
  }
}
