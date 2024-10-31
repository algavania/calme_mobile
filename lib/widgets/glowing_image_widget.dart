import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../core/color_values.dart';
import '../core/styles.dart';

class GlowingImageWidget extends StatelessWidget {
  const GlowingImageWidget(
      {Key? key,
      this.imageUrl = 'assets/home/stay_home.svg',
      required this.cardColor,
      this.isNetwork = false,
      this.imageSize})
      : super(key: key);
  final String imageUrl;
  final Color cardColor;
  final double? imageSize;
  final bool isNetwork;

  @override
  Widget build(BuildContext context) {
    final width = imageSize ?? 10.w;
    return Container(
      padding: const EdgeInsets.all(Styles.iconPadding2),
      decoration: BoxDecoration(
          color: ColorValues.lighten(cardColor, 20),
          borderRadius: BorderRadius.circular(Styles.iconBorder)),
      child: Container(
          padding: const EdgeInsets.all(Styles.iconPadding),
          decoration: BoxDecoration(
              color: ColorValues.lighten(cardColor, 50),
              borderRadius: BorderRadius.circular(Styles.defaultBorder)),
          child: isNetwork
              ? CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: width,
                )
              : SvgPicture.asset(
                  imageUrl,
                  width: width,
                )),
    );
  }
}
