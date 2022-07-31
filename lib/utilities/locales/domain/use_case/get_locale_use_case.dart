import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/utilities/locales/domain/repository/localization_repository.dart';

@injectable
class GetLocaleUseCase
    extends UseCase<Future<Either<GenericFailure, String>>, NoParams> {
  final LocalizationRepository _localizationRepository;

  GetLocaleUseCase(this._localizationRepository);

  @override
  Future<Either<GenericFailure, String>> call(NoParams params) {
    return _localizationRepository.getLocaleCode();
  }
}
