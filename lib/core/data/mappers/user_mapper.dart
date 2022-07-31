import 'package:social_task/core/data/models/user_model.dart';
import 'package:social_task/core/domain/entities/user_entity.dart';

extension UserModelMapper on UserModel {
  UserEntity get fromModel => UserEntity(
        uid: uid,
        firstName: firstName,
        lastName: lastName,
        email: email,
        image: image,
      );
}

extension UserEntityMapper on UserEntity {
  UserModel get toModel => UserModel(
        uid: uid,
        firstName: firstName,
        lastName: lastName,
        email: email,
        image: image,
      );
}
