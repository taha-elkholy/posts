import 'package:social_task/features/posts/data/models/post_model.dart';

abstract class PostDatasource {
  Future<List<PostModel>> getPosts();

  Future<void> addPost({required PostModel post});
}
