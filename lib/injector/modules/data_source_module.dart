import 'package:calme_mobile/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:calme_mobile/injector/injector.dart';

class DataSourceModule {
  DataSourceModule._();

  static void init() {
    Injector.instance.registerLazySingleton<AuthRemoteDataSource>(
      AuthRemoteDataSourceImpl.new,
    );
  }
}
