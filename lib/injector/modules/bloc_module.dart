import 'package:calme_mobile/features/authentication/view/bloc/authentication_bloc.dart';
import 'package:calme_mobile/injector/injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    Injector.instance.registerLazySingleton<AuthenticationBloc>(
      AuthenticationBloc.new,
    );
  }
}
