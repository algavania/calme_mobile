import 'package:cached_network_image/cached_network_image.dart';
import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/data/models/meditation/session_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:unicons/unicons.dart';

import '../core/color_values.dart';
import '../core/styles.dart';

class StepCardWidget extends StatelessWidget {
  const StepCardWidget(
      {super.key,
      required this.sessionModel,
      this.isFirst = false,
      this.isLast = false,
      this.isActive = false,
      this.isNetwork = false,
      this.isNextDisabled = false,
      required this.sessionStep, required this.meditationModel});

  final MeditationModel meditationModel;
  final SessionModel sessionModel;
  final String sessionStep;
  final bool isFirst, isLast, isActive, isNextDisabled, isNetwork;

  @override
  Widget build(BuildContext context) {
    BorderSide border = const BorderSide(color: ColorValues.grey10, width: 1);

    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0,
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
        width: 35,
        height: 35,
        indicator: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive ? ColorValues.success40 : Colors.white,
              border: isActive
                  ? null
                  : Border.all(color: ColorValues.grey10, width: 2)),
          child: Center(
            child: Icon(
              isActive ? UniconsSolid.check : UniconsLine.lock,
              color: isActive ? Colors.white : ColorValues.grey10,
            ),
          ),
        ),
        padding: const EdgeInsets.all(6),
      ),
      endChild: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(Styles.defaultPadding),
            margin:
                const EdgeInsets.only(left: 5, bottom: Styles.defaultSpacing),
            decoration: BoxDecoration(
                color: isActive ? ColorValues.success10 : Colors.white,
                borderRadius: BorderRadius.circular(Styles.defaultBorder),
                border: Border(
                    top: const BorderSide(
                      color: ColorValues.grey10,
                      width: 5,
                    ),
                    left: border,
                    right: border,
                    bottom: border)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meditationModel.title,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                SizedBox(height: 1.h),
                RichText(
                    text: TextSpan(
                        text: 'Sesi $sessionStep   •   ',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: ColorValues.grey50),
                        children: [
                      TextSpan(
                          text: '5 menit',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: ColorValues.grey50))
                    ])),
                SizedBox(height: 0.5.h),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: isNetwork
                  ? CachedNetworkImage(
                      imageUrl: sessionModel.thumbnailUrl,
                      width: 20.w,
                      height: 20.w,
                    )
                  : SvgPicture.asset(
                      sessionModel.thumbnailUrl,
                      width: 20.w,
                    )),
        ],
      ),
      beforeLineStyle: LineStyle(
          color: isActive ? ColorValues.success40 : ColorValues.grey10,
          thickness: 2),
      afterLineStyle: LineStyle(
          color: !isNextDisabled ? ColorValues.success40 : ColorValues.grey10,
          thickness: 2),
    );
  }
}
