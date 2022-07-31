import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/features/auth/domain/entities/register_param.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';
import 'package:social_task/features/auth/domain/repository/auth_repository.dart';

@injectable
class RegisterUseCase
    extends UseCase<Future<Either<GenericFailure, UserEntity>>, RegisterParam> {
  final AuthRepository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<Either<GenericFailure, UserEntity>> call(RegisterParam params) async {
    return await _repository.register(registerParam: params);
  }
}
