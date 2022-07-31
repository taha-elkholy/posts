import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/datasource/local/locale_service.dart';
import 'package:social_task/core/data/error/exceptions/application_exception.dart';
import 'package:social_task/features/posts/data/datasource/post_datasource.dart';
import 'package:social_task/features/posts/data/mappers/post_local_model_mapper.dart';
import 'package:social_task/features/posts/data/models/post_model.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:sqflite/sqflite.dart';

abstract class PostLocalDatasource extends PostDatasource {
  Future<Unit> createDatabase();

  Future<Unit> closeDatabase();

  Future<Unit> remove({required int id});
}

@Singleton(as: PostLocalDatasource)
class PostLocalDatasourceImpl extends PostLocalDatasource {
  final LocalService localService;

  PostLocalDatasourceImpl(this.localService);

  @override
  Future<List<PostModel>> getPosts() async {
    try {
      final localModels = await localService.getData();

      return localModels
          .map((localeModel) => localeModel.fromLocalModel)
          .toList();
    } on DatabaseException catch (e) {
      throw mapLocaleDBException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }

  @override
  Future<Unit> addPost({required PostModel post}) async {
    try {
      await localService.insert(post: post.toLocalModel);

      return unit;
    } on DatabaseException catch (e) {
      throw mapLocaleDBException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }

  @override
  Future<Unit> remove({required int id}) async {
    try {
      await localService.removeData(id: id);
      return unit;
    } on DatabaseException catch (e) {
      throw mapLocaleDBException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }

  @override
  Future<Unit> createDatabase() async {
    try {
      await localService.createDatabase();
      return unit;
    } on DatabaseException catch (e) {
      throw mapLocaleDBException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }

  @override
  Future<Unit> closeDatabase() async {
    try {
      await localService.closeDatabase();
      return unit;
    } on DatabaseException catch (e) {
      throw mapLocaleDBException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }
}
