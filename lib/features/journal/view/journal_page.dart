import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/data/models/journal/journal_model.dart';
import 'package:calme_mobile/features/journal/bloc/journal_bloc.dart';
import 'package:calme_mobile/features/journal/data/repository/journal_repository.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:calme_mobile/widgets/custom_app_bar.dart';
import 'package:calme_mobile/widgets/custom_text_field.dart';
import 'package:calme_mobile/widgets/glowing_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:unicons/unicons.dart';

@RoutePage()
class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  final TextEditingController _searchController = TextEditingController();
  final _bloc = JournalBloc(repository: Injector.instance<JournalRepository>());

  @override
  void initState() {
    _bloc.add(const JournalEvent.getAllJournals());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<JournalBloc, JournalState>(
      bloc: _bloc,
      listener: (context, state) {
        state.maybeMap(
          error: (s) {
            context.loaderOverlay.hide();
            context.showSnackBar(message: s.error, isSuccess: false);
          },
          orElse: () {},
        );
      },
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              CustomAppBar(
                title: context.l10n.journal,
              ),
              const SizedBox(height: Styles.defaultSpacing),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // _buildTopSearchWidget(),
                      // const SizedBox(height: Styles.defaultSpacing),
                      // _buildMyJournalCardWidget(),
                      // const SizedBox(height: Styles.defaultSpacing),
                      _buildJournalSectionWidget(),
                      const SizedBox(height: Styles.defaultSpacing),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMyJournalCardWidget() {
    return Container(
      margin: const EdgeInsets.all(Styles.defaultPadding),
      decoration: BoxDecoration(
        color: ColorValues.primary30,
        borderRadius: BorderRadius.circular(Styles.biggerBorder),
        border: Border.all(color: ColorValues.primary40, width: 14),
      ),
      padding: const EdgeInsets.all(Styles.contentPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.journalTitle1,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: Styles.smallerSpacing),
                Text(
                  '13 halaman',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: Styles.biggerSpacing),
                Row(
                  children: [
                    LinearPercentIndicator(
                      lineHeight: 20,
                      width: 40.w,
                      barRadius: const Radius.circular(Styles.defaultBorder),
                      percent: 3 / 13,
                      backgroundColor: Colors.white,
                      progressColor: ColorValues.secondary50,
                    ),
                    Text(
                      '3/13',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(width: Styles.defaultSpacing),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: Styles.defaultSpacing),
          SvgPicture.asset(
            'assets/people/journal_question.svg',
            width: 25.w,
          ),
        ],
      ),
    );
  }

  Widget _buildJournalSectionWidget() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  context.l10n.journalTopic,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: Styles.mediumSpacing),
          Text(
            context.l10n.journalText1,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: ColorValues.grey50),
          ),
          const SizedBox(height: Styles.biggerSpacing),
          BlocBuilder<JournalBloc, JournalState>(
            bloc: _bloc,
            builder: (context, state) {
              final dummyList =
                  List.generate(5, (_) => generateMockJournalModel());
              return state.maybeMap(
                loaded: (s) => _buildList(s.list, false),
                orElse: () => _buildList(dummyList, true),
              );
            },
          ),
          const SizedBox(height: Styles.smallerSpacing),
        ],
      ),
    );
  }

  Widget _buildList(List<JournalModel> list, bool isLoading) {
    return Skeletonizer(
      enabled: isLoading,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, i) => GestureDetector(
          onTap: () {
            AutoRouter.of(context)
                .push(JournalStartRoute(journalModel: list[i]));
          },
          child: _buildJournalItemCardWidget(list[i]),
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: Styles.defaultSpacing,
        ),
        itemCount: list.length,
      ),
    );
  }

  Widget _buildJournalItemCardWidget(JournalModel journal) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Styles.defaultBorder),
        border: Border.all(color: ColorValues.grey10),
      ),
      padding: const EdgeInsets.all(Styles.contentPadding),
      child: Row(
        children: [
          GlowingImageWidget(
            cardColor: Theme.of(context).primaryColor,
            imageUrl: journal.thumbnailUrl,
            imageSize: 8.w,
            isNetwork: true,
          ),
          const SizedBox(width: Styles.biggerSpacing),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  journal.title,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: Styles.smallerSpacing,
                ),
                Text(
                  journal.subtitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: ColorValues.grey50),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopSearchWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Styles.defaultPadding),
      child: CustomTextField(
        controller: _searchController,
        hint: context.l10n.findInterestingJournal,
        icon: UniconsLine.search,
        isDense: true,
      ),
    );
  }
}
