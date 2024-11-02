import 'package:calme_mobile/data/models/user/user_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:calme_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this.dataSource);

  final AuthRemoteDataSource dataSource;

  @override
  Future<Either<Failure, void>> changePassword(
    String oldPassword,
    String newPassword,
  ) {
    return safeCall(() => dataSource.changePassword(oldPassword, newPassword));
  }

  @override
  Future<Either<Failure, void>> forgotPassword(String email) {
    return safeCall(() => dataSource.forgotPassword(email));
  }

  @override
  Future<Either<Failure, UserModel>> login(String email, String password) {
    return safeCall(() => dataSource.login(email, password));
  }

  @override
  Future<Either<Failure, void>> logout() {
    return safeCall(dataSource.logout);
  }

  @override
  Future<Either<Failure, void>> register(
    String name,
    String email,
    String password,
  ) {
    return safeCall(() => dataSource.register(name, email, password));
  }

  @override
  Future<Either<Failure, UserModel>> getUserById(String uid) {
    return safeCall(() => dataSource.getUserById(uid));

  }
}
