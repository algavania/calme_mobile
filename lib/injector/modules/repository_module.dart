
import 'package:calme_mobile/features/article/data/article_repository.dart';
import 'package:calme_mobile/features/article/data/article_repository_impl.dart';
import 'package:calme_mobile/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:calme_mobile/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:calme_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:calme_mobile/features/coping/data/coping_repository.dart';
import 'package:calme_mobile/features/coping/data/coping_repository_impl.dart';
import 'package:calme_mobile/features/journal/data/repository/journal_repository.dart';
import 'package:calme_mobile/features/journal/data/repository/journal_repository_impl.dart';
import 'package:calme_mobile/features/meditation/data/repository/meditation_repository.dart';
import 'package:calme_mobile/features/meditation/data/repository/meditation_repository_impl.dart';
import 'package:calme_mobile/injector/injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    Injector.instance
      ..registerFactory<AuthRepository>(
            () => AuthRepositoryImpl(
          Injector.instance<AuthRemoteDataSource>(),
        ),
      )
      ..registerFactory<JournalRepository>(
        JournalRepositoryImpl.new,
      )
      ..registerFactory<MeditationRepository>(
        MeditationRepositoryImpl.new,
      )
      ..registerFactory<CopingRepository>(
        CopingRepositoryImpl.new,
      )
      ..registerFactory<ArticleRepository>(
        ArticleRepositoryImpl.new,
      );
  }
}
