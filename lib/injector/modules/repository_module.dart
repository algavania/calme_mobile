
import 'package:calme_mobile/features/article/data/datasources/article_remote_datasource.dart';
import 'package:calme_mobile/features/article/data/repositories/article_repository_impl.dart';
import 'package:calme_mobile/features/article/domain/repositories/article_repository.dart';
import 'package:calme_mobile/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:calme_mobile/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:calme_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:calme_mobile/features/coping/data/datasources/coping_remote_datasource.dart';
import 'package:calme_mobile/features/coping/data/repositories/coping_repository_impl.dart';
import 'package:calme_mobile/features/coping/domain/repositories/coping_repository.dart';
import 'package:calme_mobile/features/journal/data/datasources/journal_remote_datasource.dart';
import 'package:calme_mobile/features/journal/data/repositories/journal_repository_impl.dart';
import 'package:calme_mobile/features/journal/domain/repositories/journal_repository.dart';
import 'package:calme_mobile/features/meditation/data/datasources/meditation_remote_datasource.dart';
import 'package:calme_mobile/features/meditation/data/repositories/meditation_repository_impl.dart';
import 'package:calme_mobile/features/meditation/domain/repositories/meditation_repository.dart';
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
            () => JournalRepositoryImpl(
          Injector.instance<JournalRemoteDataSource>(),
        ),
      )
      ..registerFactory<MeditationRepository>(
            () => MeditationRepositoryImpl(
          Injector.instance<MeditationRemoteDataSource>(),
        ),
      )
      ..registerFactory<CopingRepository>(
            () => CopingRepositoryImpl(
          Injector.instance<CopingRemoteDataSource>(),
        ),
      )
      ..registerFactory<ArticleRepository>(
            () => ArticleRepositoryImpl(
          Injector.instance<ArticleRemoteDataSource>(),
        ),
      );
  }
}
