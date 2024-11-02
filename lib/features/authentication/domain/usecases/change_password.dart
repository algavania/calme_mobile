import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class ChangePasswordParams {
  ChangePasswordParams({required this.oldPassword, required this.newPassword});

  final String oldPassword;
  final String newPassword;
}

class ChangePassword
    implements UseCase<Either<Failure, void>, ChangePasswordParams> {
  ChangePassword(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, void>> call(ChangePasswordParams params) {
    return _repository.changePassword(params.oldPassword, params.newPassword);
  }
}
