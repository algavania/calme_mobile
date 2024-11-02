import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class Logout
    implements UseCase<Either<Failure, void>, None<void>> {
  Logout(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, void>> call(None<void> _) {
    return _repository.logout();
  }
}
