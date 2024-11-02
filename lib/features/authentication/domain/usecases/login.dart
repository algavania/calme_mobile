import 'package:calme_mobile/data/models/user/user_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class LoginParams {
  LoginParams({required this.email, required this.password});

  final String email;
  final String password;
}

class Login
    implements UseCase<Either<Failure, UserModel>, LoginParams> {
  Login(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, UserModel>> call(LoginParams params) {
    return _repository.login(params.email, params.password);
  }
}
