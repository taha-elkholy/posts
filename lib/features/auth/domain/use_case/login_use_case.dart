import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/features/auth/domain/entities/login_param.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';
import 'package:social_task/features/auth/domain/repository/auth_repository.dart';

@injectable
class LoginUseCase
    extends UseCase<Future<Either<GenericFailure, UserEntity>>, LoginParam> {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<GenericFailure, UserEntity>> call(LoginParam params) {
    return _repository.login(loginParam: params);
  }
}
