import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/exceptions/application_exception.dart';
import 'package:social_task/generated/l10n.dart';

abstract class StorageDatasource {
  Future<String> uploadImage({required File image, required String path});
}

@Singleton(as: StorageDatasource)
class StorageDatasourceImpl implements StorageDatasource {
  final _storage =
      FirebaseStorage.instanceFor(bucket: 'gs://social-task-66139.appspot.com');

  @override
  Future<String> uploadImage(
      {required File image, required String path}) async {
    try {
      final userImagesRef = _storage.ref().child(path);

      final uploadedImageRef =
          userImagesRef.child(Uri.file(image.path).pathSegments.last);

      var response = await uploadedImageRef.putFile(image);
      return await response.ref.getDownloadURL();
    } on FirebaseException catch (e) {
      throw mapFirebaseException(e);
    } catch (e) {
      throw GenericApplicationException(message: S.current.unKnownErrorMessage);
    }
  }
}
