import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/datasource/remote/user_remote_datasource.dart';
import 'package:social_task/core/data/error/exceptions/application_exception.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/data/mappers/user_mapper.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';
import 'package:social_task/features/profile/domain/repository/profile_repository.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  final UserRemoteDatasource _profileRemoteDatasource;

  ProfileRepositoryImpl(this._profileRemoteDatasource);

  @override
  Future<Either<GenericFailure, UserEntity>> getUserData() async {
    try {
      final user = await _profileRemoteDatasource.getUserData();
      return right(user.fromModel);
    } on GenericApplicationException catch (e) {
      return left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<GenericFailure, Unit>> setUserData(
      {required UserEntity user}) async {
    try {
      await _profileRemoteDatasource.setUserData(user: user.toModel);
      return right(unit);
    } on GenericApplicationException catch (e) {
      return left(mapExceptionToFailure(e));
    }
  }
}
