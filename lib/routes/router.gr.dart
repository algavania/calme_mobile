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
    Key? key,
    required ArticleModel article,
    List<PageRouteInfo>? children,
  }) : super(
          DetailArticleRoute.name,
          args: DetailArticleRouteArgs(
            key: key,
            article: article,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailArticleRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailArticleRouteArgs>();
      return DetailArticlePage(
        key: args.key,
        article: args.article,
      );
    },
  );
}

class DetailArticleRouteArgs {
  const DetailArticleRouteArgs({
    this.key,
    required this.article,
  });

  final Key? key;

  final ArticleModel article;

  @override
  String toString() {
    return 'DetailArticleRouteArgs{key: $key, article: $article}';
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
    Key? key,
    required JournalModel journalModel,
    required List<QuestionModel> questions,
    required List<JournalAnswerModel> answers,
    List<PageRouteInfo>? children,
  }) : super(
          JournalDetailRoute.name,
          args: JournalDetailRouteArgs(
            key: key,
            journalModel: journalModel,
            questions: questions,
            answers: answers,
          ),
          initialChildren: children,
        );

  static const String name = 'JournalDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JournalDetailRouteArgs>();
      return JournalDetailPage(
        key: args.key,
        journalModel: args.journalModel,
        questions: args.questions,
        answers: args.answers,
      );
    },
  );
}

class JournalDetailRouteArgs {
  const JournalDetailRouteArgs({
    this.key,
    required this.journalModel,
    required this.questions,
    required this.answers,
  });

  final Key? key;

  final JournalModel journalModel;

  final List<QuestionModel> questions;

  final List<JournalAnswerModel> answers;

  @override
  String toString() {
    return 'JournalDetailRouteArgs{key: $key, journalModel: $journalModel, questions: $questions, answers: $answers}';
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
    Key? key,
    required JournalModel journalModel,
    List<PageRouteInfo>? children,
  }) : super(
          JournalStartRoute.name,
          args: JournalStartRouteArgs(
            key: key,
            journalModel: journalModel,
          ),
          initialChildren: children,
        );

  static const String name = 'JournalStartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JournalStartRouteArgs>();
      return JournalStartPage(
        key: args.key,
        journalModel: args.journalModel,
      );
    },
  );
}

class JournalStartRouteArgs {
  const JournalStartRouteArgs({
    this.key,
    required this.journalModel,
  });

  final Key? key;

  final JournalModel journalModel;

  @override
  String toString() {
    return 'JournalStartRouteArgs{key: $key, journalModel: $journalModel}';
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
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [MeditationDetailPage]
class MeditationDetailRoute extends PageRouteInfo<MeditationDetailRouteArgs> {
  MeditationDetailRoute({
    Key? key,
    required MeditationModel meditationModel,
    List<PageRouteInfo>? children,
  }) : super(
          MeditationDetailRoute.name,
          args: MeditationDetailRouteArgs(
            key: key,
            meditationModel: meditationModel,
          ),
          initialChildren: children,
        );

  static const String name = 'MeditationDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MeditationDetailRouteArgs>();
      return MeditationDetailPage(
        key: args.key,
        meditationModel: args.meditationModel,
      );
    },
  );
}

class MeditationDetailRouteArgs {
  const MeditationDetailRouteArgs({
    this.key,
    required this.meditationModel,
  });

  final Key? key;

  final MeditationModel meditationModel;

  @override
  String toString() {
    return 'MeditationDetailRouteArgs{key: $key, meditationModel: $meditationModel}';
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
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterPage();
    },
  );
}

/// generated route for
/// [SessionPage]
class SessionRoute extends PageRouteInfo<SessionRouteArgs> {
  SessionRoute({
    Key? key,
    required MeditationModel meditationModel,
    List<PageRouteInfo>? children,
  }) : super(
          SessionRoute.name,
          args: SessionRouteArgs(
            key: key,
            meditationModel: meditationModel,
          ),
          initialChildren: children,
        );

  static const String name = 'SessionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SessionRouteArgs>();
      return SessionPage(
        key: args.key,
        meditationModel: args.meditationModel,
      );
    },
  );
}

class SessionRouteArgs {
  const SessionRouteArgs({
    this.key,
    required this.meditationModel,
  });

  final Key? key;

  final MeditationModel meditationModel;

  @override
  String toString() {
    return 'SessionRouteArgs{key: $key, meditationModel: $meditationModel}';
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
