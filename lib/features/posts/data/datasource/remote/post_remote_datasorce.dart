import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/exceptions/application_exception.dart';
import 'package:social_task/features/posts/data/datasource/post_datasource.dart';
import 'package:social_task/features/posts/data/models/post_model.dart';
import 'package:social_task/generated/l10n.dart';
import 'package:social_task/utilities/constants/api_path.dart';

abstract class PostRemoteDatasource extends PostDatasource {}

@Singleton(as: PostRemoteDatasource)
class PostRemoteDatasourceImpl extends PostRemoteDatasource {
  final _firestore = FirebaseFirestore.instance;

  @override
  Future<List<PostModel>> getPosts() async {
    try {
      final postsDocRef = _firestore.collection(APIPath.posts());
      var snapshot = await postsDocRef.get();
      return snapshot.docs
          .map((post) => PostModel.fromMap(post.data()))
          .toList();
    } on FirebaseException catch (e) {
      throw mapFirebaseException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }

  @override
  Future<void> addPost({required PostModel post}) async {
    try {
      final postsDocRef = _firestore.collection(APIPath.posts());
      return await postsDocRef.doc(post.postId).set(post.toMap());
    } on FirebaseException catch (e) {
      throw mapFirebaseException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }
}
