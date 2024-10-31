import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:calme_mobile/widgets/back_button.dart';
import 'package:calme_mobile/widgets/step_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';

@RoutePage()
class MeditationDetailPage extends StatefulWidget {
  const MeditationDetailPage({required this.meditationModel, super.key});

  final MeditationModel meditationModel;

  @override
  State<MeditationDetailPage> createState() => _MeditationDetailPageState();
}

class _MeditationDetailPageState extends State<MeditationDetailPage> {
  @override
  Widget build(BuildContext context) {
    final color = widget.meditationModel.colorCode.hexToColor();
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: kToolbarHeight + 10,
        centerTitle: true,
        backgroundColor: color,
        leading: Container(
          margin: const EdgeInsets.only(left: Styles.defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(
                backgroundColor: ColorValues.lighten(color, 30),
                iconColor: ColorValues.white,
              ),
            ],
          ),
        ),
        title: Text(
          AppLocalizations.of(context).meditation,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: ColorValues.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopWidget(),
            const SizedBox(
              height: Styles.defaultSpacing,
            ),
            _buildBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sesi Topik',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: Styles.mediumSpacing,
          ),
          Text(
            'Oh iya, topik ini punya beberapa sesi',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: ColorValues.grey50),
          ),
          const SizedBox(
            height: Styles.bigSpacing,
          ),
          Column(
            children:
                List.generate(widget.meditationModel.sessions.length, (index) {
              final session = widget.meditationModel.sessions[index];
              return StepCardWidget(
                sessionModel: session,
                meditationModel: widget.meditationModel,
                sessionStep:
                    '${index + 1}/${widget.meditationModel.sessions.length}',
                isFirst: index == 0,
                isLast: index == widget.meditationModel.sessions.length - 1,
                isNetwork: true,
                isActive: true,
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildTopWidget() {
    final color = widget.meditationModel.colorCode.hexToColor();
    return Container(
      padding: const EdgeInsets.all(Styles.defaultPadding),
      color: color,
      child: Column(
        children: [
          _buildMeditationWidget(color),
          const SizedBox(
            height: Styles.bigSpacing,
          ),
          _buildPlayButton(color),
          const SizedBox(
            height: Styles.defaultSpacing,
          ),
        ],
      ),
    );
  }

  Widget _buildPlayButton(Color color) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: ColorValues.white,
        surfaceTintColor: ColorValues.white,
        backgroundColor: ColorValues.lighten(color, 20),
        minimumSize: const Size.fromHeight(48),
        side: BorderSide(
          color: ColorValues.lighten(
            color,
            40,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Styles.defaultBorder),
        ),
      ),
      onPressed: () {
        AutoRouter.of(context).push(
          SessionRoute(
            meditationModel: widget.meditationModel,
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(UniconsLine.play),
          const SizedBox(
            width: Styles.defaultSpacing,
          ),
          Text(
            'Mulai Meditasi',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontSize: 14, color: ColorValues.white),
          ),
        ],
      ),
    );
  }

  Widget _buildMeditationWidget(Color color) {
    var minutes = 0;
    for (final data in widget.meditationModel.sessions) {
      minutes += data.length;
    }
    return Container(
      width: 100.w,
      padding: const EdgeInsets.all(Styles.iconPadding2),
      decoration: BoxDecoration(
        color: ColorValues.lighten(color, 20),
        borderRadius: BorderRadius.circular(Styles.iconBorder),
      ),
      child: Container(
        padding: const EdgeInsets.all(Styles.defaultPadding),
        decoration: BoxDecoration(
          color: ColorValues.lighten(color, 40),
          borderRadius: BorderRadius.circular(Styles.defaultBorder),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.meditationModel.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: ColorValues.white),
                  ),
                  const SizedBox(
                    height: Styles.smallerSpacing,
                  ),
                  Text(
                    widget.meditationModel.subtitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: ColorValues.white),
                  ),
                  const SizedBox(
                    height: Styles.defaultSpacing,
                  ),
                  Row(
                    children: [
                      const Icon(
                        UniconsLine.headphones,
                        color: ColorValues.white,
                        size: 18,
                      ),
                      const SizedBox(
                        width: Styles.mediumSpacing,
                      ),
                      Text(
                        '$minutes menit    •    '
                            '${widget.meditationModel.sessions.length} sesi',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: ColorValues.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CachedNetworkImage(
              imageUrl: widget.meditationModel.thumbnailUrl,
              width: 20.w,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
