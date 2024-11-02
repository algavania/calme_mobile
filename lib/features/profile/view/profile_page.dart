import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/database/db_helper.dart';
import 'package:calme_mobile/features/authentication/view/bloc/authentication_bloc.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:calme_mobile/widgets/custom_alert_dialog.dart';
import 'package:calme_mobile/widgets/custom_app_bar.dart';
import 'package:calme_mobile/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:unicons/unicons.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final _bloc = Injector.instance<AuthenticationBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      bloc: _bloc,
      listener: (context, state) {
        state.isAuthenticated.maybeMap(
          orElse: () {},
          loading: (_) {
            context.loaderOverlay.show();
          },
          data: (s) {
            context.loaderOverlay.hide();
            if (!s.data) {
              AutoRouter.of(context).replace(LoginRoute());
            }
          },
        );
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: context.l10n.profile,
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildProfileBody(context),
                const SizedBox(height: Styles.defaultSpacing),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileBody(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildUserInfo(context),
          // const SizedBox(height: Styles.defaultSpacing),
          // _buildMyActivity(),
          const SizedBox(height: Styles.defaultSpacing),
          _buildHelpCenter(context),
        ],
      ),
    );
  }

  Widget _buildMyActivity(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: Styles.biggerSpacing),
        Text(
          context.l10n.myActivity,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: Styles.biggerSpacing),
        _buildButton(
          icon: UniconsLine.history,
          text: context.l10n.journalHistory,
          context: context,
        ),
        const SizedBox(height: Styles.defaultSpacing),
        _buildButton(
          icon: UniconsLine.bookmark,
          text: context.l10n.savedArticle,
          context: context,
        ),
        const SizedBox(height: Styles.defaultSpacing),
        _buildButton(
          icon: UniconsLine.key_skeleton_alt,
          text: context.l10n.changePassword,
          context: context,
        ),
      ],
    );
  }

  Widget _buildHelpCenter(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: Styles.biggerSpacing),
        Text(
          context.l10n.helpCenter,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: Styles.biggerSpacing),
        GestureDetector(
          onTap: () {
            showDialog<void>(
              context: context,
              builder: (_) => CustomAlertDialog(
                title: 'Konfirmasi',
                description: 'Apakah kamu yakin ingin logout?',
                proceedAction: () {
                  _bloc.add(const AuthenticationEvent.logout());
                },
              ),
            );
          },
          child: _buildButton(
            icon: UniconsLine.sign_out_alt,
            text: context.l10n.logout,
            context: context,
            borderColor: ColorValues.danger50,
          ),
        ),
      ],
    );
  }

  Widget _buildButton({
    required IconData icon,
    required String text,
    required BuildContext context,
    Color? borderColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Styles.defaultBorder),
        border: Border.all(color: borderColor ?? ColorValues.grey10),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: Styles.contentPadding,
        horizontal: Styles.defaultPadding,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: borderColor ?? Theme.of(context).primaryColor,
          ),
          const SizedBox(width: Styles.defaultSpacing),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: borderColor ?? ColorValues.text50),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo(BuildContext context) {
    return Row(
      children: [
        RoundedButton(
          size: 64,
          border: Border.all(color: ColorValues.primary50),
          color: ColorValues.primary50,
          onTap: () {},
          child: const Icon(
            UniconsLine.user,
            color: ColorValues.white,
            size: 32,
          ),
        ),
        const SizedBox(width: Styles.defaultSpacing),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DbHelper.auth.currentUser?.displayName ?? 'User',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: Styles.smallerSpacing),
            Text(
              DbHelper.auth.currentUser?.email ?? 'user@gmail.com',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: ColorValues.grey50),
            ),
          ],
        ),
      ],
    );
  }
}
