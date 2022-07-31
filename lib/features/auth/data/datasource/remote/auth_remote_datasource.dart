import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/datasource/remote/user_remote_datasource.dart';
import 'package:social_task/core/data/error/exceptions/application_exception.dart';
import 'package:social_task/core/data/models/user_model.dart';
import 'package:social_task/features/auth/domain/entities/login_param.dart';
import 'package:social_task/features/auth/domain/entities/register_param.dart';
import 'package:social_task/generated/l10n.dart';

abstract class AuthRemoteDatasource {
  Future<UserModel> loginWithEmailAndPassword({required LoginParam loginParam});

  Future<UserModel> signUpWithEmailAndPassword(
      {required RegisterParam registerParam});

  Future<Unit> resetPassword({required String email});

  Future<Unit> logOut();
}

@Singleton(as: AuthRemoteDatasource)
class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final _firebaseAuth = FirebaseAuth.instance;

  final UserRemoteDatasource _userDatasource;

  AuthRemoteDatasourceImpl(this._userDatasource);

  @override
  Future<UserModel> loginWithEmailAndPassword(
      {required LoginParam loginParam}) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
          email: loginParam.email, password: loginParam.password);
      if (credential.user != null) {
        final userModel = await _userDatasource.getUserData();
        return userModel;
      }
      throw GenericApplicationException(message: S.current.notFoundMessage);
    } on FirebaseException catch (e) {
      throw mapFirebaseException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }

  @override
  Future<UserModel> signUpWithEmailAndPassword(
      {required RegisterParam registerParam}) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: registerParam.email, password: registerParam.password);

      if (credential.user != null) {
        await _userDatasource.setUserData(
          user: UserModel(
            uid: credential.user!.uid,
            firstName: registerParam.firstName,
            lastName: registerParam.lastName,
            email: registerParam.email,
          ),
        );
      }
      if (credential.user != null) {
        final userModel = await _userDatasource.getUserData();
        return userModel;
      }
      throw GenericApplicationException(message: S.current.notFoundMessage);
    } on FirebaseException catch (e) {
      throw mapFirebaseException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }

  @override
  Future<Unit> logOut() async {
    try {
      await _firebaseAuth.signOut();
      return unit;
    } on FirebaseException catch (e) {
      throw mapFirebaseException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }

  @override
  Future<Unit> resetPassword({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return unit;
    } on FirebaseException catch (e) {
      throw mapFirebaseException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }
}
