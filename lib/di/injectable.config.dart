// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../core/data/datasource/local/locale_service.dart' as _i6;
import '../core/data/datasource/remote/auth_status.dart' as _i3;
import '../core/data/datasource/remote/storage_datasource.dart' as _i10;
import '../core/data/datasource/remote/user_remote_datasource.dart' as _i13;
import '../core/domain/repository/upload_image_repo.dart' as _i11;
import '../core/domain/use_cases/upload_image_use_case.dart' as _i12;
import '../core/presentation/pages/home/cubit/home_cubit.dart' as _i5;
import '../core/presentation/pages/landing/cubit/auth_status_cubit.dart' as _i4;
import '../features/auth/data/datasource/remote/auth_remote_datasource.dart'
    as _i14;
import '../features/auth/data/repository/auth_repository_impl.dart' as _i16;
import '../features/auth/domain/repository/auth_repository.dart' as _i15;
import '../features/auth/domain/use_case/login_use_case.dart' as _i20;
import '../features/auth/domain/use_case/logout_use_case.dart' as _i21;
import '../features/auth/domain/use_case/register_use_case.dart' as _i26;
import '../features/auth/domain/use_case/reset_password_use_case.dart' as _i28;
import '../features/auth/presentation/cubit/auth_cubit.dart' as _i31;
import '../features/posts/data/datasource/local/post_local_datasorce.dart'
    as _i7;
import '../features/posts/data/datasource/remote/post_remote_datasorce.dart'
    as _i8;
import '../features/posts/data/repository/posts_repository_impl.dart' as _i23;
import '../features/posts/domain/repository/posts_repository.dart' as _i22;
import '../features/posts/domain/use_case/close_local_database_use_case.dart'
    as _i33;
import '../features/posts/domain/use_case/create_local_database_use_case.dart'
    as _i34;
import '../features/posts/domain/use_case/get_posts_use_case.dart' as _i36;
import '../features/posts/domain/use_case/remove_post_from_local_use_case.dart'
    as _i27;
import '../features/posts/domain/use_case/set_post_use_case.dart' as _i29;
import '../features/posts/presentation/cubit/post_cubit.dart' as _i39;
import '../features/profile/data/repository/profile_repository_impl.dart'
    as _i25;
import '../features/profile/domain/repository/profile_repository.dart' as _i24;
import '../features/profile/domain/use_case/get_user_data_use_case.dart'
    as _i37;
import '../features/profile/domain/use_case/set_user_data_use_case.dart'
    as _i30;
import '../features/profile/presentation/cubit/profile_cubit.dart' as _i40;
import '../utilities/locales/data/data_source/local/localization_datasource.dart'
    as _i17;
import '../utilities/locales/data/repository/localization_repo_impl.dart'
    as _i19;
import '../utilities/locales/domain/repository/localization_repository.dart'
    as _i18;
import '../utilities/locales/domain/use_case/change_locale_use_case.dart'
    as _i32;
import '../utilities/locales/domain/use_case/get_locale_use_case.dart' as _i35;
import '../utilities/locales/presentation/bloc/locale_cubit/locale_cubit.dart'
    as _i38;
import 'modules/shared_preferences.dart'
    as _i41; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final sharedPrefInjectionModule = _$SharedPrefInjectionModule();
  gh.singleton<_i3.AuthStatus>(_i3.AuthStatusImpl());
  gh.factory<_i4.AuthStatusCubit>(
      () => _i4.AuthStatusCubit(get<_i3.AuthStatus>()));
  gh.factory<_i5.HomeCubit>(() => _i5.HomeCubit());
  gh.singleton<_i6.LocalService>(_i6.LocalServiceImpl());
  gh.singleton<_i7.PostLocalDatasource>(
      _i7.PostLocalDatasourceImpl(get<_i6.LocalService>()));
  gh.singleton<_i8.PostRemoteDatasource>(_i8.PostRemoteDatasourceImpl());
  await gh.factoryAsync<_i9.SharedPreferences>(
      () => sharedPrefInjectionModule.prefs,
      preResolve: true);
  gh.singleton<_i10.StorageDatasource>(_i10.StorageDatasourceImpl());
  gh.singleton<_i11.UploadImageRepository>(
      _i11.UploadImageRepositoryImpl(get<_i10.StorageDatasource>()));
  gh.factory<_i12.UploadImageUseCase>(
      () => _i12.UploadImageUseCase(get<_i11.UploadImageRepository>()));
  gh.singleton<_i13.UserRemoteDatasource>(_i13.UserRemoteDatasourceImpl());
  gh.singleton<_i14.AuthRemoteDatasource>(
      _i14.AuthRemoteDatasourceImpl(get<_i13.UserRemoteDatasource>()));
  gh.factory<_i15.AuthRepository>(
      () => _i16.AuthRepositoryImpl(get<_i14.AuthRemoteDatasource>()));
  gh.singleton<_i17.LocalizationDatasource>(
      _i17.LocalizationDatasourceImpl(get<_i9.SharedPreferences>()));
  gh.factory<_i18.LocalizationRepository>(
      () => _i19.LocalizationRepoImpl(get<_i17.LocalizationDatasource>()));
  gh.factory<_i20.LoginUseCase>(
      () => _i20.LoginUseCase(get<_i15.AuthRepository>()));
  gh.factory<_i21.LogoutUseCase>(
      () => _i21.LogoutUseCase(get<_i15.AuthRepository>()));
  gh.factory<_i22.PostsRepository>(() => _i23.PostsRepositoryImpl(
      get<_i7.PostLocalDatasource>(),
      get<_i8.PostRemoteDatasource>(),
      get<_i10.StorageDatasource>()));
  gh.factory<_i24.ProfileRepository>(
      () => _i25.ProfileRepositoryImpl(get<_i13.UserRemoteDatasource>()));
  gh.factory<_i26.RegisterUseCase>(
      () => _i26.RegisterUseCase(get<_i15.AuthRepository>()));
  gh.factory<_i27.RemovePostFromLocalUseCase>(
      () => _i27.RemovePostFromLocalUseCase(get<_i22.PostsRepository>()));
  gh.factory<_i28.ResetPasswordUseCase>(
      () => _i28.ResetPasswordUseCase(get<_i15.AuthRepository>()));
  gh.factory<_i29.SetPostsUseCase>(
      () => _i29.SetPostsUseCase(get<_i22.PostsRepository>()));
  gh.factory<_i30.SetUserDataUseCase>(
      () => _i30.SetUserDataUseCase(get<_i24.ProfileRepository>()));
  gh.factory<_i31.AuthCubit>(() => _i31.AuthCubit(
      get<_i26.RegisterUseCase>(),
      get<_i20.LoginUseCase>(),
      get<_i21.LogoutUseCase>(),
      get<_i28.ResetPasswordUseCase>()));
  gh.factory<_i32.ChangeLocaleUseCase>(
      () => _i32.ChangeLocaleUseCase(get<_i18.LocalizationRepository>()));
  gh.factory<_i33.CloseLocalDatabaseUseCase>(
      () => _i33.CloseLocalDatabaseUseCase(get<_i22.PostsRepository>()));
  gh.factory<_i34.CreateLocaleDatabaseUseCase>(
      () => _i34.CreateLocaleDatabaseUseCase(get<_i22.PostsRepository>()));
  gh.factory<_i35.GetLocaleUseCase>(
      () => _i35.GetLocaleUseCase(get<_i18.LocalizationRepository>()));
  gh.factory<_i36.GetPostsUseCase>(
      () => _i36.GetPostsUseCase(get<_i22.PostsRepository>()));
  gh.factory<_i37.GetUserDataUseCase>(
      () => _i37.GetUserDataUseCase(get<_i24.ProfileRepository>()));
  gh.factory<_i38.LocaleCubit>(() => _i38.LocaleCubit(
      get<_i35.GetLocaleUseCase>(), get<_i32.ChangeLocaleUseCase>()));
  gh.factory<_i39.PostCubit>(() => _i39.PostCubit(
      get<_i36.GetPostsUseCase>(),
      get<_i29.SetPostsUseCase>(),
      get<_i12.UploadImageUseCase>(),
      get<_i34.CreateLocaleDatabaseUseCase>(),
      get<_i27.RemovePostFromLocalUseCase>(),
      get<_i33.CloseLocalDatabaseUseCase>()));
  gh.factory<_i40.ProfileCubit>(() => _i40.ProfileCubit(
      get<_i37.GetUserDataUseCase>(),
      get<_i30.SetUserDataUseCase>(),
      get<_i12.UploadImageUseCase>()));
  return get;
}

class _$SharedPrefInjectionModule extends _i41.SharedPrefInjectionModule {}
