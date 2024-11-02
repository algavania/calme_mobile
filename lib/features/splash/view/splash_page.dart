import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/features/authentication/view/bloc/authentication_bloc.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:calme_mobile/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Injector.instance<AuthenticationBloc>()
        .add(const AuthenticationEvent.checkAuthStatus());
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      bloc: Injector.instance<AuthenticationBloc>(),
      listener: (context, state) {
        state.isAuthenticated.maybeWhen(
          orElse: () {},
          error: (_) {
            AutoRouter.of(context).replace(LoginRoute());
          },
          data: (s) {
            if (s) {
              AutoRouter.of(context).replace(const DashboardRoute());
            } else {
              AutoRouter.of(context).replace(LoginRoute());
            }
          },
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(10.w),
            child: const Center(
              child: LogoWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
