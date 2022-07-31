import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/utilities/locales/domain/repository/localization_repository.dart';

@injectable
class ChangeLocaleUseCase
    extends UseCase<Future<Either<GenericFailure, Unit>>, String> {
  final LocalizationRepository _localizationRepository;

  ChangeLocaleUseCase(this._localizationRepository);

  @override
  Future<Either<GenericFailure, Unit>> call(String params) {
    return _localizationRepository.changeLocaleCode(localeCode: params);
  }
}
