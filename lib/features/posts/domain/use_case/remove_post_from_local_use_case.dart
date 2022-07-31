import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_task/core/data/error/failures/application_failure.dart';
import 'package:social_task/core/domain/use_cases/use_case.dart';
import 'package:social_task/features/posts/domain/repository/posts_repository.dart';

@injectable
class RemovePostFromLocalUseCase
    extends UseCase<Future<Either<GenericFailure, Unit>>, int> {
  final PostsRepository _repository;

  RemovePostFromLocalUseCase(this._repository);

  @override
  Future<Either<GenericFailure, Unit>> call(int params) {
    return _repository.removeFromLocal(localPostId: params);
  }
}
