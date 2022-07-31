import 'package:dartz/dartz.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';

abstract class LocalizationRepository {
  Future<Either<GenericFailure, String>> getLocaleCode();

  Future<Either<GenericFailure, Unit>> changeLocaleCode(
      {required String localeCode});
}
