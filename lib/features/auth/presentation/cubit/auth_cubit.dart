import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/features/auth/domain/entities/login_param.dart';
import 'package:social_task/features/auth/domain/entities/register_param.dart';
import 'package:social_task/features/auth/domain/use_case/login_use_case.dart';
import 'package:social_task/features/auth/domain/use_case/logout_use_case.dart';
import 'package:social_task/features/auth/domain/use_case/register_use_case.dart';
import 'package:social_task/features/auth/domain/use_case/reset_password_use_case.dart';
import 'package:social_task/features/auth/presentation/cubit/auth_states.dart';

@injectable
class AuthCubit extends Cubit<AuthStates> {
  AuthCubit(
    this._registerUseCase,
    this._loginUseCase,
    this._logoutUseCase,
    this._resetPasswordUseCase,
  ) : super(const AuthStates.initial());

  final RegisterUseCase _registerUseCase;
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;
  final ResetPasswordUseCase _resetPasswordUseCase;

  Future<void> register({required RegisterParam param}) async {
    emit(const AuthStates.loading());

    final result = await _registerUseCase(param);
    emit(
      result.fold(
        (failure) => AuthStates.error(errorMessage: failure.message),
        (user) => AuthStates.authenticated(user: user),
      ),
    );
  }

  Future<void> login({required LoginParam param}) async {
    emit(const AuthStates.loading());

    final result = await _loginUseCase(param);
    emit(
      result.fold(
        (failure) => AuthStates.error(errorMessage: failure.message),
        (user) => AuthStates.authenticated(user: user),
      ),
    );
  }

  Future<void> logout() async {
    emit(const AuthStates.loading());

    final result = await _logoutUseCase(NoParams());
    emit(
      result.fold(
        (failure) => AuthStates.error(errorMessage: failure.message),
        (_) => const AuthStates.unAuthenticated(),
      ),
    );
  }

  Future<void> resetPassword({required String email}) async {
    emit(const AuthStates.loading());

    final result = await _resetPasswordUseCase(email);
    emit(
      result.fold(
        (failure) => AuthStates.error(errorMessage: failure.message),
        (_) => const AuthStates.sendResetEmail(),
      ),
    );
  }
}
