import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class ForgotPassword
    implements UseCase<Either<Failure, void>, String> {
  ForgotPassword(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, void>> call(String params) {
    return _repository.forgotPassword(params);
  }
}
