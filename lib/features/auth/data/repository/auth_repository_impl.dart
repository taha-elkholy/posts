import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/exceptions/application_exception.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/data/mappers/user_mapper.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';
import 'package:social_task/features/auth/data/datasource/remote/auth_remote_datasource.dart';
import 'package:social_task/features/auth/domain/entities/login_param.dart';
import 'package:social_task/features/auth/domain/entities/register_param.dart';
import 'package:social_task/features/auth/domain/repository/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDatasource _authRemoteDatasource;

  AuthRepositoryImpl(this._authRemoteDatasource);

  @override
  Future<Either<GenericFailure, Unit>> logOut() async {
    try {
      return right(await _authRemoteDatasource.logOut());
    } on GenericApplicationException catch (e) {
      return left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<GenericFailure, UserEntity>> login(
      {required LoginParam loginParam}) async {
    try {
      final user = await _authRemoteDatasource.loginWithEmailAndPassword(
          loginParam: loginParam);

      return right(user.fromModel);
    } on GenericApplicationException catch (e) {
      return left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<GenericFailure, UserEntity>> register(
      {required RegisterParam registerParam}) async {
    try {
      final user = await _authRemoteDatasource.signUpWithEmailAndPassword(
          registerParam: registerParam);
      return right(user.fromModel);
    } on GenericApplicationException catch (e) {
      return left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<GenericFailure, Unit>> resetPassword(
      {required String email}) async {
    try {
      return right(await _authRemoteDatasource.resetPassword(email: email));
    } on GenericApplicationException catch (e) {
      return left(mapExceptionToFailure(e));
    }
  }
}
