import 'package:calme_mobile/features/article/data/datasources/article_remote_datasource.dart';
import 'package:calme_mobile/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:calme_mobile/features/coping/data/datasources/coping_remote_datasource.dart';
import 'package:calme_mobile/injector/injector.dart';

class DataSourceModule {
  DataSourceModule._();

  static void init() {
    Injector.instance.registerLazySingleton<AuthRemoteDataSource>(
      AuthRemoteDataSourceImpl.new,
    );
    Injector.instance.registerLazySingleton<ArticleRemoteDataSource>(
      ArticleRemoteDataSourceImpl.new,
    );
    Injector.instance.registerLazySingleton<CopingRemoteDataSource>(
      CopingRemoteDataSourceImpl.new,
    );
  }
}
