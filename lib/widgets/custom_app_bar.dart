import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/widgets/back_button.dart';
import 'package:calme_mobile/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.actions});

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final canPop = AutoRouter.of(context).canPop();
    var widgets = <Widget>[];
    widgets.addAll(actions ?? []);
    if (widgets.isNotEmpty) {
      widgets.add(const SizedBox(
        width: Styles.defaultPadding,
      ));
    }
    return AppBar(
      backgroundColor: ColorValues.background,
      automaticallyImplyLeading: canPop,
      leadingWidth: 100,
      toolbarHeight: kToolbarHeight + 10,
      leading: Container(
        margin: const EdgeInsets.only(left: Styles.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            !canPop
                ? RoundedButton(
                    child: Image.asset(
                  'assets/core/logo.png',
                  width: 30,
                ))
                : const CustomBackButton(),
          ],
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.labelLarge,
      ),
      actions: widgets,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
