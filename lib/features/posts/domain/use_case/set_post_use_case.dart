import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/features/posts/domain/entities/post_param.dart';
import 'package:social_task/features/posts/domain/repository/posts_repository.dart';

@injectable
class SetPostsUseCase
    extends UseCase<Future<Either<GenericFailure, Unit>>, PostParam> {
  final PostsRepository _repository;

  SetPostsUseCase(this._repository);

  @override
  Future<Either<GenericFailure, Unit>> call(PostParam params) {
    return _repository.setPostData(source: params.source, post: params.post);
  }
}
