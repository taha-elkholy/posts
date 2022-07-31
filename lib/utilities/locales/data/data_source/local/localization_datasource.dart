import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_task/utilities/constants/constants.dart';

abstract class LocalizationDatasource {
  Future<bool> changeLocaleCode({required String localeCode});

  String? getLocaleCode();
}

@Singleton(as: LocalizationDatasource)
class LocalizationDatasourceImpl extends LocalizationDatasource {
  final SharedPreferences _preferences;

  LocalizationDatasourceImpl(this._preferences);

  @override
  String? getLocaleCode() {
    return _preferences.getString(Constants.currentLocaleCodeKey);
  }

  @override
  Future<bool> changeLocaleCode({required String localeCode}) async {
    return await _preferences.setString(
        Constants.currentLocaleCodeKey, localeCode);
  }
}
