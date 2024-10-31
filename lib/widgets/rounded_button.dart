import 'package:calme_mobile/core/color_values.dart';
import 'package:flutter/material.dart';

import '../core/styles.dart';

class RoundedButton extends StatefulWidget {
  const RoundedButton({Key? key, this.onTap, this.withOnlineIndicator = false, this.size = 48, this.border, required this.child, this.color}) : super(key: key);
  final void Function()? onTap;
  final Border? border;
  final Widget child;
  final Color? color;
  final bool withOnlineIndicator;
  final double size;

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        children: [
          Container(
            height: widget.size,
            width: widget.size,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: widget.color ?? Colors.white,
                border: widget.border,
                borderRadius: BorderRadius.circular(Styles.defaultBorder)
            ),
            child: Center(
              child: widget.child,
            ),
          ),
          if (widget.withOnlineIndicator) SizedBox(
            height: 48,
            width: 48,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorValues.success40,
                    border: Border.all(color: ColorValues.success50, width: 1)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
