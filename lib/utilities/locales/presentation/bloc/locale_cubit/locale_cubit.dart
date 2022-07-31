import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/utilities/constants/constants.dart';
import 'package:social_task/utilities/locales/domain/use_case/change_locale_use_case.dart';
import 'package:social_task/utilities/locales/domain/use_case/get_locale_use_case.dart';
import 'package:social_task/utilities/locales/presentation/bloc/locale_cubit/locale_states.dart';

@injectable
class LocaleCubit extends Cubit<LocaleStates> {
  LocaleCubit(this._getLocaleUseCase, this._changeLocaleUseCase)
      : super(const LocaleStates.initial());

  final GetLocaleUseCase _getLocaleUseCase;
  final ChangeLocaleUseCase _changeLocaleUseCase;
  Locale? locale;

  Future<void> getLocalization() async {
    final res = await _getLocaleUseCase(NoParams());
    emit(
      res.fold(
        (error) {
          locale = Constants.englishLocale;
          return LocaleStates.error(errorMessage: error.message);
        },
        (localeCode) {
          locale = Locale(localeCode);
          return LocaleStates.loadedFromShared(locale: locale!);
        },
      ),
    );
  }

  Future<void> changeLocalization() async {
    late String newLocale;
    if (locale != null) {
      newLocale = (locale!.languageCode == Constants.englishLocale.languageCode)
          ? Constants.arabicLocale.languageCode
          : Constants.englishLocale.languageCode;
    } else {
      newLocale = Constants.englishLocale.languageCode;
    }
    final res = await _changeLocaleUseCase(newLocale);
    emit(
      res.fold(
        (error) {
          locale = Constants.englishLocale;
          return LocaleStates.error(errorMessage: error.message);
        },
        (changed) {
          locale = Locale(newLocale);
          return LocaleStates.changed(locale: locale!);
        },
      ),
    );
  }
}
