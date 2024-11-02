import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/features/authentication/view/bloc/authentication_bloc.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:calme_mobile/util/validator.dart';
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
class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _bloc = Injector.instance<AuthenticationBloc>();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      bloc: _bloc,
      listener: (context, state) {
        state.registerStatus.maybeMap(
          error: (s) {
            context.loaderOverlay.hide();
            context.showSnackBar(message: s.message, isSuccess: false);
          },
          data: (s) {
            context.loaderOverlay.hide();
            if (s.data) {
              AutoRouter.of(context).replace(LoginRoute());
            }
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
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(height: 5.h),
                          const LogoWidget(),
                          SizedBox(height: 6.h),
                          Text(
                            context.l10n.registerText1,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(height: 1.5.h),
                          Text(
                            context.l10n.registerText2,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: ColorValues.grey50),
                          ),
                          SizedBox(height: 5.h),
                          CustomTextField(
                            controller: _nameController,
                            label: context.l10n.yourName,
                            hint: context.l10n.enterName,
                            icon: UniconsLine.user,
                            validator:
                                Validator(context: context).emptyValidator,
                          ),
                          const SizedBox(height: 16),
                          CustomTextField(
                            textInputType: TextInputType.emailAddress,
                            controller: _emailController,
                            label: context.l10n.yourEmail,
                            hint: context.l10n.enterEmail,
                            icon: UniconsLine.envelope,
                            validator:
                                Validator(context: context).emailValidator,
                          ),
                          const SizedBox(height: 16),
                          CustomTextField(
                            controller: _passwordController,
                            label: context.l10n.yourPassword,
                            hint: context.l10n.enterPassword,
                            icon: UniconsLine.key_skeleton,
                            isPassword: true,
                            validator:
                                Validator(context: context).emptyValidator,
                          ),
                          const SizedBox(height: 26),
                          CustomButton(
                            buttonText: context.l10n.register,
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? true) {
                                final name =
                                    _nameController.text.trimLeft().trimRight();
                                final email = _emailController.text
                                    .trimLeft()
                                    .trimRight();
                                final password = _passwordController.text;
                                _bloc.add(
                                  AuthenticationEvent.register(
                                    name,
                                    email,
                                    password,
                                  ),
                                );
                              }
                            },
                          ),
                          Expanded(child: Container()),
                          SizedBox(height: 3.h),
                          RichText(
                            text: TextSpan(
                              text: context.l10n.registerSubText,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: ColorValues.grey50),
                              children: [
                                TextSpan(
                                  text: ' ${context.l10n.registerSubText2}',
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
                                          .replace(LoginRoute());
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
