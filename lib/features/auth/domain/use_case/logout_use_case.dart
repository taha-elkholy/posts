import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/features/auth/domain/repository/auth_repository.dart';

@injectable
class LogoutUseCase
    extends UseCase<Future<Either<GenericFailure, Unit>>, NoParams> {
  final AuthRepository _repository;

  LogoutUseCase(this._repository);

  @override
  Future<Either<GenericFailure, Unit>> call(NoParams params) {
    return _repository.logOut();
  }
}
