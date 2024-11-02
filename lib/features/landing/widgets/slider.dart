import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({
    required this.title,
    required this.description,
    required this.image,
    super.key,
  });

  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Styles.defaultPadding),
      child: Column(
        children: [
          const SizedBox(height: 100),
          Image.asset(
            image,
            height: 30.h,
          ),
          const SizedBox(height: 48),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: ColorValues.grey50),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
