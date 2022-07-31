import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_status_states.freezed.dart';

@freezed
class AuthStatusStates with _$AuthStatusStates {
  const factory AuthStatusStates.initial() = AuthStatusInitialState;

  const factory AuthStatusStates.unAuthenticated() = AuthStatusAuthenticated;

  const factory AuthStatusStates.loading() = AuthStatusLoading;

  const factory AuthStatusStates.authenticated() = AuthStatusUnAuthenticated;
}
