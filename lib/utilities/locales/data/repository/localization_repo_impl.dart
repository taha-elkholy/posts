import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/constants.dart';
import 'package:social_task/utilities/locales/data/data_source/local/localization_datasource.dart';
import 'package:social_task/utilities/locales/domain/repository/localization_repository.dart';

@Injectable(as: LocalizationRepository)
class LocalizationRepoImpl extends LocalizationRepository {
  final LocalizationDatasource _localizationDatasource;

  LocalizationRepoImpl(this._localizationDatasource);

  @override
  Future<Either<GenericFailure, Unit>> changeLocaleCode(
      {required String localeCode}) async {
    try {
      await _localizationDatasource.changeLocaleCode(localeCode: localeCode);

      return right(unit);
    } catch (exception) {
      return left(GenericFailure(message: S.current.unKnownErrorMessage));
    }
  }

  @override
  Future<Either<GenericFailure, String>> getLocaleCode() async {
    try {
      final result = _localizationDatasource.getLocaleCode();
      return right(result ?? Constants.englishLocale.languageCode);
    } catch (exception) {
      return left(GenericFailure(message: S.current.unKnownErrorMessage));
    }
  }
}
