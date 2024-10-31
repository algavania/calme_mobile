import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    required this.title,
    super.key,
    this.description,
    this.descriptionWidget,
    this.proceedText,
    this.proceedAction,
    this.cancelText,
  });

  final String title;
  final String? description;
  final Widget? descriptionWidget;
  final String? proceedText;
  final String? cancelText;
  final void Function()? proceedAction;

  @override
  Widget build(BuildContext context) {
    final Widget proceedButton = CustomButton(
      onPressed: () {
        Navigator.of(context).pop();
        proceedAction?.call();
      },
      buttonText: proceedText ?? 'Ya',
    );

    final Widget cancelButton = CustomButton(
      onPressed: () => Navigator.of(context).pop(),
      buttonText: cancelText ?? 'Tidak',
      isWhiteButton: true,
    );

    final alert = Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          surfaceTintColor: ColorValues.white,
          backgroundColor: ColorValues.white,
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              descriptionWidget ??
                  Text(
                    description ?? '',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
              const SizedBox(
                height: Styles.bigSpacing,
              ),
              Row(
                children: [
                  if (proceedAction != null) Expanded(child: cancelButton),
                  if (proceedAction != null)
                    const SizedBox(
                      width: Styles.defaultSpacing,
                    ),
                  Expanded(child: proceedButton),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    return alert;
  }
}
