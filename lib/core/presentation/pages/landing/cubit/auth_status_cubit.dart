import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/datasource/remote/auth_status.dart';
import 'package:social_task/core/presentation/pages/landing/cubit/auth_status_states.dart';

@injectable
class AuthStatusCubit extends Cubit<AuthStatusStates> {
  AuthStatusCubit(this._authStatus) : super(const AuthStatusStates.initial());

  final AuthStatus _authStatus;

  void getAuthStatus() {
    emit(const AuthStatusStates.loading());
    var status = _authStatus.getAuthStatus();
    status.forEach((user) {
      (user == null)
          ? emit(const AuthStatusStates.unAuthenticated())
          : emit(const AuthStatusStates.authenticated());
    });
  }
}
