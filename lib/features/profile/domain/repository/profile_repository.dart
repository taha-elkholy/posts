import 'package:dartz/dartz.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';

abstract class ProfileRepository {
  Future<Either<GenericFailure, UserEntity>> getUserData();

  Future<Either<GenericFailure, Unit>> setUserData({required UserEntity user});
}
