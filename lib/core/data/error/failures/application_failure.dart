import 'package:social_task/core/data/error/exceptions/application_exception.dart';

abstract class Failure {}

class GenericFailure extends Failure {
  final String message;

  GenericFailure({required this.message});
}

GenericFailure mapExceptionToFailure(GenericApplicationException e) {
  return GenericFailure(message: e.message);
}
