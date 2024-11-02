import 'package:calme_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/get_user_by_id.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/login.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/logout.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/register.dart';
import 'package:calme_mobile/injector/injector.dart';

class UseCasesModule {
  UseCasesModule._();

  static void init() {
    /// Auth Use Cases
    Injector.instance
      ..registerLazySingleton<Login>(
        () => Login(
          Injector.instance<AuthRepository>(),
        ),
      )
      ..registerLazySingleton<Logout>(
        () => Logout(
          Injector.instance<AuthRepository>(),
        ),
      )
      ..registerLazySingleton<GetUserById>(
            () => GetUserById(
          Injector.instance<AuthRepository>(),
        ),
      )
      ..registerLazySingleton<Register>(
        () => Register(
          Injector.instance<AuthRepository>(),
        ),
      );
  }
}
