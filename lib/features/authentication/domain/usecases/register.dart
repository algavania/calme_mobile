import 'package:calme_mobile/data/models/user/user_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class RegisterParams {
  RegisterParams({
    required this.name,
    required this.email,
    required this.password,
  });

  final String name;
  final String email;
  final String password;
}

class Register implements UseCase<Either<Failure, void>, RegisterParams> {
  Register(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, void>> call(RegisterParams params) {
    return _repository.register(params.name, params.email, params.password);
  }
}
