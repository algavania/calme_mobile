import 'package:calme_mobile/data/models/user/user_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserModel>> getUserById(String uid);

  Future<Either<Failure, UserModel>> login(String email, String password);

  Future<Either<Failure, void>> register(
    String name,
    String email,
    String password,
  );

  Future<Either<Failure, void>> forgotPassword(String email);

  Future<Either<Failure, void>> changePassword(
    String oldPassword,
    String newPassword,
  );

  Future<Either<Failure, void>> logout();
}
