import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/features/authentication/bloc/authentication_bloc.dart';
import 'package:calme_mobile/features/authentication/data/repository/auth_repository.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:calme_mobile/widgets/custom_button.dart';
import 'package:calme_mobile/widgets/custom_text_field.dart';
import 'package:calme_mobile/widgets/logo_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _bloc =
      AuthenticationBloc(repository: Injector.instance<AuthRepository>());

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      bloc: _bloc,
      listener: (context, state) {
        state.maybeMap(
          error: (s) {
            context.loaderOverlay.hide();
            context.showSnackBar(message: s.error, isSuccess: false);
          },
          registered: (s) {
            context.loaderOverlay.hide();
            AutoRouter.of(context).replace(const LoginRoute());
          },
          loading: (_) {
            context.loaderOverlay.show();
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Container(
                    margin: const EdgeInsets.all(Styles.defaultPadding),
                    child: Column(
                      children: [
                        SizedBox(height: 5.h),
                        const LogoWidget(),
                        SizedBox(height: 6.h),
                        Text(
                          AppLocalizations.of(context).registerText1,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: 1.5.h),
                        Text(
                          AppLocalizations.of(context).registerText2,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: ColorValues.grey50),
                        ),
                        SizedBox(height: 5.h),
                        CustomTextField(
                          controller: _nameController,
                          label: AppLocalizations.of(context).yourName,
                          hint: AppLocalizations.of(context).enterName,
                          icon: UniconsLine.user,
                        ),
                        const SizedBox(height: 16),
                        CustomTextField(
                          textInputType: TextInputType.emailAddress,
                          controller: _emailController,
                          label: AppLocalizations.of(context).yourEmail,
                          hint: AppLocalizations.of(context).enterEmail,
                          icon: UniconsLine.envelope,
                        ),
                        const SizedBox(height: 16),
                        CustomTextField(
                          controller: _passwordController,
                          label: AppLocalizations.of(context).yourPassword,
                          hint: AppLocalizations.of(context).enterPassword,
                          icon: UniconsLine.key_skeleton,
                          isPassword: true,
                        ),
                        const SizedBox(height: 26),
                        CustomButton(
                          buttonText: AppLocalizations.of(context).register,
                          onPressed: () {
                            final name =
                                _nameController.text.trimLeft().trimRight();
                            final email =
                                _emailController.text.trimLeft().trimRight();
                            final password = _passwordController.text;
                            _bloc.add(
                              AuthenticationEvent.register(
                                name,
                                email,
                                password,
                              ),
                            );
                          },
                        ),
                        Expanded(child: Container()),
                        SizedBox(height: 3.h),
                        RichText(
                          text: TextSpan(
                            text: AppLocalizations.of(context).registerSubText,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: ColorValues.grey50),
                            children: [
                              TextSpan(
                                text:
                                    ' ${AppLocalizations.of(context)
                                        .registerSubText2}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    AutoRouter.of(context)
                                        .replace(const LoginRoute());
                                  },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
