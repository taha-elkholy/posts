import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';

part 'auth_states.freezed.dart';

@freezed
class AuthStates with _$AuthStates {
  const factory AuthStates.initial() = AuthInitialState;

  const factory AuthStates.loading() = AuthLoadingState;

  const factory AuthStates.authenticated({required UserEntity user}) =
      AuthenticatedState;

  const factory AuthStates.unAuthenticated() = UnAuthenticatedState;
  const factory AuthStates.sendResetEmail() = SendResetEmailState;

  const factory AuthStates.error({required String errorMessage}) =
      AuthErrorState;
}
