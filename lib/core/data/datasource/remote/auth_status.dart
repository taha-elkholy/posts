import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract class AuthStatus {
  Stream<User?> getAuthStatus();
}

@Singleton(as: AuthStatus)
class AuthStatusImpl implements AuthStatus {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Stream<User?> getAuthStatus() {
    return _firebaseAuth.authStateChanges();
  }
}
