import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/exceptions/application_exception.dart';
import 'package:social_task/core/data/models/user_model.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/api_path.dart';

abstract class UserRemoteDatasource {
  Future<UserModel> getUserData();

  // create and update
  Future<void> setUserData({required UserModel user});
}

@Singleton(as: UserRemoteDatasource)
class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  final _firestore = FirebaseFirestore.instance;
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<UserModel> getUserData() async {
    try {
      if (_firebaseAuth.currentUser != null) {
        final uid = _firebaseAuth.currentUser!.uid;
        final userDocRef = _firestore.collection(APIPath.users()).doc(uid);
        var snapshot = await userDocRef.get();
        if (snapshot.data() != null) {
          return UserModel.fromMap(snapshot.data()!, uid);
        }
      }

      throw GenericApplicationException(message: S.current.notFoundMessage);
    } on FirebaseException catch (e) {
      throw mapFirebaseException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }

  @override
  Future<void> setUserData({required UserModel user}) async {
    try {
      final users = _firestore.collection(APIPath.users());
      await users.doc(user.uid).set(user.toMap());
    } on FirebaseException catch (e) {
      throw mapFirebaseException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }
}
