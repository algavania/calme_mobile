import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:calme_mobile/widgets/glowing_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';

import '../core/color_values.dart';
import '../core/styles.dart';
import 'step_card_widget.dart';

class MeditationCardWidget extends StatefulWidget {
  const MeditationCardWidget({
    super.key,
    required this.meditationModel,
  });

  final MeditationModel meditationModel;

  @override
  State<MeditationCardWidget> createState() => _MeditationCardWidgetState();
}

class _MeditationCardWidgetState extends State<MeditationCardWidget> {
  bool _isOpened = false;

  @override
  Widget build(BuildContext context) {
    final color = widget.meditationModel.colorCode.hexToColor();
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(Styles.defaultBorder)),
          padding: const EdgeInsets.all(Styles.defaultPadding),
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              GlowingImageWidget(
                  imageUrl: widget.meditationModel.thumbnailUrl,
                  isNetwork: true,
                  cardColor: color),
              const SizedBox(width: Styles.defaultSpacing),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: widget.meditationModel.title,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(color: Colors.white),
                            children: [
                          const TextSpan(text: '    •    '),
                          TextSpan(
                              text:
                                  '${widget.meditationModel.sessions.length} sesi',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.white))
                        ])),
                    const SizedBox(height: Styles.smallerSpacing),
                    Text(widget.meditationModel.subtitle,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.white))
                  ],
                ),
              ),
              const SizedBox(width: Styles.defaultSpacing),
              InkWell(
                onTap: () {
                  setState(() {
                    _isOpened = !_isOpened;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorValues.lighten(color, 20),
                      borderRadius:
                          BorderRadius.circular(Styles.smallerBorder)),
                  padding: const EdgeInsets.all(Styles.smallerSpacing),
                  child: Icon(
                    _isOpened ? UniconsSolid.angle_up : UniconsSolid.angle_down,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 2.h),
        if (_isOpened)
          Column(
            children:
                List.generate(widget.meditationModel.sessions.length, (index) {
              final session = widget.meditationModel.sessions[index];
              return StepCardWidget(
                sessionModel: session,
                meditationModel: widget.meditationModel,
                sessionStep: '${index+1}/${widget.meditationModel.sessions.length}',
                isFirst: index == 0,
                isLast: index == widget.meditationModel.sessions.length - 1,
                isNetwork: true,
                isActive: true,
              );
            }),
          ),
        // if (_isOpened)
        //   const Column(
        //     children: [
        //       StepCardWidget(
        //           imageUrl: 'assets/people/listening1.svg',
        //           isFirst: true,
        //           isActive: true,
        //           isNextDisabled: true),
        //       StepCardWidget(
        //           imageUrl: 'assets/people/listening2.svg',
        //           isActive: false,
        //           isNextDisabled: true),
        //       StepCardWidget(
        //           imageUrl: 'assets/people/dumbbell.svg',
        //           isLast: true,
        //           isActive: false),
        //     ],
        //   )
      ],
    );
  }
}
