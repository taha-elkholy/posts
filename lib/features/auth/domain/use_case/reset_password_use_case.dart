import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/features/auth/domain/repository/auth_repository.dart';

@injectable
class ResetPasswordUseCase
    extends UseCase<Future<Either<GenericFailure, Unit>>, String> {
  final AuthRepository _authRepository;

  ResetPasswordUseCase(this._authRepository);

  @override
  Future<Either<GenericFailure, Unit>> call(String params) async {
    return await _authRepository.resetPassword(email: params);
  }
}
