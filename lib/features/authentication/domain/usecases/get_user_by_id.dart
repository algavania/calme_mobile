import 'package:calme_mobile/data/models/user/user_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class GetUserById
    implements UseCase<Either<Failure, UserModel>, String> {
  GetUserById(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, UserModel>> call(String params) {
    return _repository.getUserById(params);
  }
}
