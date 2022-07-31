import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/features/posts/domain/entities/post.dart';
import 'package:social_task/features/posts/domain/repository/posts_repository.dart';
import 'package:social_task/utilities/enums/posts_source_enum.dart';

@injectable
class GetPostsUseCase
    extends UseCase<Future<Either<GenericFailure, List<Post>>>, PostsSource> {
  final PostsRepository _repository;

  GetPostsUseCase(this._repository);

  @override
  Future<Either<GenericFailure, List<Post>>> call(PostsSource params) {
    return _repository.getPosts(source: params);
  }
}
