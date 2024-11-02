import 'package:calme_mobile/features/article/domain/repositories/article_repository.dart';
import 'package:calme_mobile/features/article/domain/usecases/get_articles.dart';
import 'package:calme_mobile/features/authentication/domain/repositories/auth_repository.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/get_user_by_id.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/login.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/logout.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/register.dart';
import 'package:calme_mobile/features/coping/domain/repositories/coping_repository.dart';
import 'package:calme_mobile/features/coping/domain/usecases/get_copings.dart';
import 'package:calme_mobile/features/fitconnect/domain/repositories/fitconnect_repository.dart';
import 'package:calme_mobile/features/fitconnect/domain/usecases/get_analytics.dart';
import 'package:calme_mobile/features/fitconnect/domain/usecases/get_heart_rates.dart';
import 'package:calme_mobile/features/fitconnect/domain/usecases/get_sleep_quality.dart';
import 'package:calme_mobile/features/fitconnect/domain/usecases/get_steps_count.dart';
import 'package:calme_mobile/features/fitconnect/domain/usecases/request_health_permissions.dart';
import 'package:calme_mobile/features/journal/domain/repositories/journal_repository.dart';
import 'package:calme_mobile/features/journal/domain/usecases/get_journal_answers.dart';
import 'package:calme_mobile/features/journal/domain/usecases/get_journal_questions.dart';
import 'package:calme_mobile/features/journal/domain/usecases/get_journals.dart';
import 'package:calme_mobile/features/journal/domain/usecases/save_journal_answers.dart';
import 'package:calme_mobile/features/meditation/domain/repositories/meditation_repository.dart';
import 'package:calme_mobile/features/meditation/domain/usecases/get_meditation_sessions.dart';
import 'package:calme_mobile/features/meditation/domain/usecases/get_meditations.dart';
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
      )

      /// Article Use Cases
      ..registerLazySingleton<GetArticles>(
        () => GetArticles(
          Injector.instance<ArticleRepository>(),
        ),
      )

      /// Coping Use Cases
      ..registerLazySingleton<GetCopings>(
        () => GetCopings(
          Injector.instance<CopingRepository>(),
        ),
      )

      /// Journal Use Cases
      ..registerLazySingleton<GetJournalAnswers>(
        () => GetJournalAnswers(
          Injector.instance<JournalRepository>(),
        ),
      )
      ..registerLazySingleton<GetJournalQuestions>(
        () => GetJournalQuestions(
          Injector.instance<JournalRepository>(),
        ),
      )
      ..registerLazySingleton<GetJournals>(
        () => GetJournals(
          Injector.instance<JournalRepository>(),
        ),
      )
      ..registerLazySingleton<SaveJournalAnswers>(
        () => SaveJournalAnswers(
          Injector.instance<JournalRepository>(),
        ),
      )

      /// Meditation Use Cases
      ..registerLazySingleton<GetMeditations>(
        () => GetMeditations(
          Injector.instance<MeditationRepository>(),
        ),
      )
      ..registerLazySingleton<GetMeditationSessions>(
        () => GetMeditationSessions(
          Injector.instance<MeditationRepository>(),
        ),
      )

      /// FitConnect Use Cases
      ..registerLazySingleton<GetStepsCount>(
        () => GetStepsCount(
          Injector.instance<FitConnectRepository>(),
        ),
      )
      ..registerLazySingleton<GetHeartRates>(
            () => GetHeartRates(
          Injector.instance<FitConnectRepository>(),
        ),
      )
      ..registerLazySingleton<GetSleepQuality>(
            () => GetSleepQuality(
          Injector.instance<FitConnectRepository>(),
        ),
      )
      ..registerLazySingleton<GetAnalytics>(
            () => GetAnalytics(
          Injector.instance<FitConnectRepository>(),
        ),
      )
      ..registerLazySingleton<RequestHealthPermissions>(
        () => RequestHealthPermissions(
          Injector.instance<FitConnectRepository>(),
        ),
      );
  }
}
