import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/features/profile/domain/repository/profile_repository.dart';

@injectable
class SetUserDataUseCase
    extends UseCase<Future<Either<GenericFailure, Unit>>, UserEntity> {
  final ProfileRepository _repository;

  SetUserDataUseCase(this._repository);

  @override
  Future<Either<GenericFailure, Unit>> call(UserEntity params) {
    return _repository.setUserData(user: params);
  }
}
