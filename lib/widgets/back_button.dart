import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.backgroundColor, this.iconColor});
  final Color? backgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      color: backgroundColor,
      onTap: () {
        AutoRouter.of(context).maybePop();
      },
      child: Icon(UniconsLine.arrow_left, color: iconColor ?? Colors.black),
    );
  }
}
