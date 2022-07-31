import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/entities/upload_image_param.dart';
import 'package:social_task/core/domain/repository/upload_image_repo.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';

@injectable
class UploadImageUseCase
    extends UseCase<Future<Either<GenericFailure, String>>, UploadImageParam> {
  final UploadImageRepository _repository;

  UploadImageUseCase(this._repository);

  @override
  Future<Either<GenericFailure, String>> call(UploadImageParam params) {
    return _repository.uploadImage(params: params);
  }
}
