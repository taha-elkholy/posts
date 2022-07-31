import 'package:social_task/features/posts/domain/entities/post.dart';
import 'package:social_task/utilities/enums/posts_source_enum.dart';

class PostParam {
  final PostsSource source;
  final Post post;

  const PostParam({
    required this.source,
    required this.post,
  });
}
