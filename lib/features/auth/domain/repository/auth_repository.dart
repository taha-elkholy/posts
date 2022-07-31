import 'package:dartz/dartz.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';
import 'package:social_task/features/auth/domain/entities/login_param.dart';
import 'package:social_task/features/auth/domain/entities/register_param.dart';

abstract class AuthRepository {
  Future<Either<GenericFailure, UserEntity>> login(
      {required LoginParam loginParam});

  Future<Either<GenericFailure, UserEntity>> register(
      {required RegisterParam registerParam});

  Future<Either<GenericFailure, Unit>> logOut();

  Future<Either<GenericFailure, Unit>> resetPassword({required String email});
}
