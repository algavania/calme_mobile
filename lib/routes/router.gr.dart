// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [ArticlePage]
class ArticleRoute extends PageRouteInfo<void> {
  const ArticleRoute({List<PageRouteInfo>? children})
      : super(
          ArticleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArticleRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ArticlePage();
    },
  );
}

/// generated route for
/// [ChatbotPage]
class ChatbotRoute extends PageRouteInfo<void> {
  const ChatbotRoute({List<PageRouteInfo>? children})
      : super(
          ChatbotRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatbotRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChatbotPage();
    },
  );
}

/// generated route for
/// [CopingPage]
class CopingRoute extends PageRouteInfo<void> {
  const CopingRoute({List<PageRouteInfo>? children})
      : super(
          CopingRoute.name,
          initialChildren: children,
        );

  static const String name = 'CopingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CopingPage();
    },
  );
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardPage();
    },
  );
}

/// generated route for
/// [DetailArticlePage]
class DetailArticleRoute extends PageRouteInfo<DetailArticleRouteArgs> {
  DetailArticleRoute({
    required ArticleModel article,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DetailArticleRoute.name,
          args: DetailArticleRouteArgs(
            article: article,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailArticleRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailArticleRouteArgs>();
      return DetailArticlePage(
        article: args.article,
        key: args.key,
      );
    },
  );
}

class DetailArticleRouteArgs {
  const DetailArticleRouteArgs({
    required this.article,
    this.key,
  });

  final ArticleModel article;

  final Key? key;

  @override
  String toString() {
    return 'DetailArticleRouteArgs{article: $article, key: $key}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [JournalDetailPage]
class JournalDetailRoute extends PageRouteInfo<JournalDetailRouteArgs> {
  JournalDetailRoute({
    required JournalModel journalModel,
    required List<QuestionModel> questions,
    required List<JournalAnswerModel> answers,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          JournalDetailRoute.name,
          args: JournalDetailRouteArgs(
            journalModel: journalModel,
            questions: questions,
            answers: answers,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'JournalDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JournalDetailRouteArgs>();
      return JournalDetailPage(
        journalModel: args.journalModel,
        questions: args.questions,
        answers: args.answers,
        key: args.key,
      );
    },
  );
}

class JournalDetailRouteArgs {
  const JournalDetailRouteArgs({
    required this.journalModel,
    required this.questions,
    required this.answers,
    this.key,
  });

  final JournalModel journalModel;

  final List<QuestionModel> questions;

  final List<JournalAnswerModel> answers;

  final Key? key;

  @override
  String toString() {
    return 'JournalDetailRouteArgs{journalModel: $journalModel, questions: $questions, answers: $answers, key: $key}';
  }
}

/// generated route for
/// [JournalPage]
class JournalRoute extends PageRouteInfo<void> {
  const JournalRoute({List<PageRouteInfo>? children})
      : super(
          JournalRoute.name,
          initialChildren: children,
        );

  static const String name = 'JournalRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const JournalPage();
    },
  );
}

/// generated route for
/// [JournalStartPage]
class JournalStartRoute extends PageRouteInfo<JournalStartRouteArgs> {
  JournalStartRoute({
    required JournalModel journalModel,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          JournalStartRoute.name,
          args: JournalStartRouteArgs(
            journalModel: journalModel,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'JournalStartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JournalStartRouteArgs>();
      return JournalStartPage(
        journalModel: args.journalModel,
        key: args.key,
      );
    },
  );
}

class JournalStartRouteArgs {
  const JournalStartRouteArgs({
    required this.journalModel,
    this.key,
  });

  final JournalModel journalModel;

  final Key? key;

  @override
  String toString() {
    return 'JournalStartRouteArgs{journalModel: $journalModel, key: $key}';
  }
}

/// generated route for
/// [LandingPage]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute({List<PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LandingPage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return LoginPage(key: args.key);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MeditationDetailPage]
class MeditationDetailRoute extends PageRouteInfo<MeditationDetailRouteArgs> {
  MeditationDetailRoute({
    required MeditationModel meditationModel,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MeditationDetailRoute.name,
          args: MeditationDetailRouteArgs(
            meditationModel: meditationModel,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MeditationDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MeditationDetailRouteArgs>();
      return MeditationDetailPage(
        meditationModel: args.meditationModel,
        key: args.key,
      );
    },
  );
}

class MeditationDetailRouteArgs {
  const MeditationDetailRouteArgs({
    required this.meditationModel,
    this.key,
  });

  final MeditationModel meditationModel;

  final Key? key;

  @override
  String toString() {
    return 'MeditationDetailRouteArgs{meditationModel: $meditationModel, key: $key}';
  }
}

/// generated route for
/// [MeditationPage]
class MeditationRoute extends PageRouteInfo<void> {
  const MeditationRoute({List<PageRouteInfo>? children})
      : super(
          MeditationRoute.name,
          initialChildren: children,
        );

  static const String name = 'MeditationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MeditationPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<ProfileRouteArgs>(orElse: () => const ProfileRouteArgs());
      return ProfilePage(key: args.key);
    },
  );
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return RegisterPage(key: args.key);
    },
  );
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SessionPage]
class SessionRoute extends PageRouteInfo<SessionRouteArgs> {
  SessionRoute({
    required MeditationModel meditationModel,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SessionRoute.name,
          args: SessionRouteArgs(
            meditationModel: meditationModel,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SessionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SessionRouteArgs>();
      return SessionPage(
        meditationModel: args.meditationModel,
        key: args.key,
      );
    },
  );
}

class SessionRouteArgs {
  const SessionRouteArgs({
    required this.meditationModel,
    this.key,
  });

  final MeditationModel meditationModel;

  final Key? key;

  @override
  String toString() {
    return 'SessionRouteArgs{meditationModel: $meditationModel, key: $key}';
  }
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}
