import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/datasource/remote/storage_datasource.dart';
import 'package:social_task/core/data/error/exceptions/application_exception.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/entities/upload_image_param.dart';

abstract class UploadImageRepository {
  Future<Either<GenericFailure, String>> uploadImage(
      {required UploadImageParam params});
}

@Singleton(as: UploadImageRepository)
class UploadImageRepositoryImpl extends UploadImageRepository {
  final StorageDatasource _storageDatasource;

  UploadImageRepositoryImpl(this._storageDatasource);

  @override
  Future<Either<GenericFailure, String>> uploadImage(
      {required UploadImageParam params}) async {
    try {
      final url = await _storageDatasource.uploadImage(
          image: params.image, path: params.path);
      return right(url);
    } on GenericApplicationException catch (e) {
      return left(mapExceptionToFailure(e));
    }
  }
}
