import 'package:calme_mobile/features/article/view/bloc/article_bloc.dart';
import 'package:calme_mobile/features/authentication/view/bloc/authentication_bloc.dart';
import 'package:calme_mobile/features/coping/view/bloc/coping_bloc.dart';
import 'package:calme_mobile/features/fitconnect/view/bloc/fitconnect_bloc.dart';
import 'package:calme_mobile/features/journal/view/bloc/journal_bloc.dart';
import 'package:calme_mobile/features/meditation/view/bloc/meditation_bloc.dart';
import 'package:calme_mobile/injector/injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    Injector.instance.registerLazySingleton<AuthenticationBloc>(
      AuthenticationBloc.new,
    );
    Injector.instance.registerLazySingleton<ArticleBloc>(
      ArticleBloc.new,
    );
    Injector.instance.registerLazySingleton<CopingBloc>(
      CopingBloc.new,
    );
    Injector.instance.registerLazySingleton<JournalBloc>(
      JournalBloc.new,
    );
    Injector.instance.registerLazySingleton<MeditationBloc>(
      MeditationBloc.new,
    );
    Injector.instance.registerLazySingleton<FitconnectBloc>(
      FitconnectBloc.new,
    );
  }
}
