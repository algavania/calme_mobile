import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/features/article/view/bloc/article_bloc.dart';
import 'package:calme_mobile/features/fitconnect/view/bloc/fitconnect_bloc.dart';
import 'package:calme_mobile/features/meditation/view/bloc/meditation_bloc.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:calme_mobile/widgets/article_card_widget.dart';
import 'package:calme_mobile/widgets/custom_app_bar.dart';
import 'package:calme_mobile/widgets/custom_button.dart';
import 'package:calme_mobile/widgets/custom_text_field.dart';
import 'package:calme_mobile/widgets/glowing_image_widget.dart';
import 'package:calme_mobile/widgets/meditation_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/health.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:unicons/unicons.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController _searchController = TextEditingController();

  final _meditationBloc = Injector.instance<MeditationBloc>();

  final _articleBloc = Injector.instance<ArticleBloc>();

  final _fitConnectBloc = Injector.instance<FitconnectBloc>();

  void _getData() {
    _meditationBloc.add(const MeditationEvent.getAllMeditations());
    _articleBloc.add(const ArticleEvent.getArticles());
    _fitConnectBloc.add(const FitconnectEvent.checkHealthConnect());
  }

  @override
  Widget build(BuildContext context) {
    _getData();
    return MultiBlocListener(
      listeners: [
        BlocListener<MeditationBloc, MeditationState>(
          bloc: _meditationBloc,
          listener: (context, state) {
            state.meditations.maybeMap(
              orElse: () {},
              error: (s) {
                context.showSnackBar(message: s.message, isSuccess: false);
              },
            );
          },
        ),
        BlocListener<ArticleBloc, ArticleState>(
          bloc: _articleBloc,
          listener: (context, state) {
            state.articles.maybeMap(
              orElse: () {},
              error: (s) {
                context.showSnackBar(message: s.message, isSuccess: false);
              },
            );
          },
        ),
        BlocListener<FitconnectBloc, FitconnectState>(
          bloc: _fitConnectBloc,
          listener: (context, state) {
            state.isHealthConnectAvailable.maybeMap(
              orElse: () {},
              error: (s) {
                context.showSnackBar(message: s.message, isSuccess: false);
              },
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: CustomAppBar(
          title: context.l10n.home,
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: RefreshIndicator(
            onRefresh: () async {
              _getData();
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDayIntroductionSectionWidget(context),
                  const SizedBox(height: Styles.defaultSpacing),
                  _buildFitnessWidget(),
                  const SizedBox(height: Styles.defaultSpacing),
                  _buildCopingToolboxWidget(context),
                  // const SizedBox(height: Styles.defaultSpacing),
                  // _buildMeditationSectionWidget(),
                  const SizedBox(height: Styles.defaultSpacing),
                  _buildOtherMeditationSectionWidget(context),
                  // const SizedBox(height: Styles.defaultSpacing),
                  // _buildBreathingExerciseSectionWidget(),
                  const SizedBox(height: Styles.defaultSpacing),
                  _buildArticleSectionWidget(context),
                  const SizedBox(height: Styles.defaultSpacing),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFitnessWidget() {
    return BlocBuilder<FitconnectBloc, FitconnectState>(
      bloc: _fitConnectBloc,
      builder: (context, state) {
        final hasInstallHealthConnect = state.isHealthConnectAvailable
            .maybeMap(orElse: () => false, data: (s) => s.data);
        return Container(
          width: hasInstallHealthConnect ? null : 100.w,
          color: Colors.white,
          padding: const EdgeInsets.all(Styles.defaultPadding),
          child: hasInstallHealthConnect
              ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildStepWidget(context),
                        const SizedBox(
                          width: Styles.defaultSpacing,
                        ),
                        _buildHeartRateWidget(context),
                      ],
                    ),
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: Styles.defaultSpacing,
                    ),
                    const Text(
                      'Hubungkan Health Connect '
                      'untuk melihat data kesehatanmu.',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: Styles.bigSpacing,
                    ),
                    CustomButton(
                      buttonText: 'Hubungkan',
                      onPressed: () async {
                        _fitConnectBloc.add(
                          const FitconnectEvent.requestHealthPermissions(),
                        );
                      },
                    ),
                    const SizedBox(
                      height: Styles.defaultSpacing,
                    ),
                  ],
                ),
        );
      },
    );
  }

  Widget _buildHeartRateWidget(BuildContext context) {
    final heartRates = _fitConnectBloc.state.heartRates
        .maybeMap(orElse: () => <HealthDataPoint>[], data: (s) => s.data);
    final totalHeartRates =
        heartRates.isEmpty ? 0 : heartRates.last.value.toJson()['numericValue'];
    return Container(
      constraints: BoxConstraints(
        minWidth: 45.w,
        maxWidth: 55.w,
      ),
      padding: const EdgeInsets.all(Styles.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: ColorValues.grey10),
        borderRadius: BorderRadius.circular(Styles.defaultBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Detak jantung',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: Styles.defaultSpacing,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/home/heart.png',
                            width: 32,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(
                            width: Styles.defaultSpacing,
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: totalHeartRates.toString(),
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                    children: [
                                      TextSpan(
                                        text: '\nbpm',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '>180bpm\n<80bpm',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: ColorValues.danger50,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepWidget(BuildContext context) {
    final currentStepsCount = _fitConnectBloc.state.stepsCount
        .maybeMap(orElse: () => 0, data: (s) => s.data);
    const stepGoal = 10000;
    return Container(
      width: 45.w,
      padding: const EdgeInsets.all(Styles.defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: ColorValues.grey10),
        borderRadius: BorderRadius.circular(Styles.defaultBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Langkah kaki',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(
            height: Styles.defaultSpacing,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/home/steps.png',
                  width: 32,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  width: Styles.defaultSpacing,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: currentStepsCount.toString(),
                          style: Theme.of(context).textTheme.labelLarge,
                          children: [
                            TextSpan(
                              text: '\n/$stepGoal',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: Styles.bigSpacing,
          ),
          LinearPercentIndicator(
            lineHeight: 1.2.h,
            barRadius: const Radius.circular(100),
            percent: currentStepsCount / stepGoal,
            progressColor: Theme.of(context).primaryColor,
            backgroundColor: ColorValues.grey10,
          ),
        ],
      ),
    );
  }

  Widget _buildCopingToolboxWidget(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(CopingRoute());
      },
      child: Container(
        color: color,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(Styles.defaultPadding),
        child: Row(
          children: [
            GlowingImageWidget(
              cardColor: color,
              imageUrl: 'assets/home/gift.svg',
            ),
            const SizedBox(width: Styles.defaultSpacing),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.copingToolbox,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: Styles.defaultSpacing,
                  ),
                  Text(
                    context.l10n.copingText,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(width: Styles.defaultSpacing),
            Container(
              decoration: BoxDecoration(
                color: ColorValues.lighten(color, 20),
                borderRadius: BorderRadius.circular(Styles.smallerBorder),
              ),
              padding: const EdgeInsets.all(Styles.smallerSpacing),
              child: const Icon(
                UniconsSolid.angle_right_b,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildArticleSectionWidget(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  context.l10n.articleSectionText1,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              SizedBox(width: 1.w),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).navigate(ArticleRoute());
                },
                child: Text(
                  context.l10n.viewAll,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: ColorValues.secondary50),
                ),
              ),
            ],
          ),
          const SizedBox(height: Styles.mediumSpacing),
          Text(
            context.l10n.articleSectionText2,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: ColorValues.grey50),
          ),
          const SizedBox(height: Styles.biggerSpacing),
          BlocBuilder<ArticleBloc, ArticleState>(
            bloc: _articleBloc,
            builder: (context, state) {
              final dummyList =
                  List.generate(3, (index) => generateMockArticleModel());
              return state.articles.maybeMap(
                data: (s) => _buildArticleList(s.data, false, context),
                orElse: () => _buildArticleList(dummyList, true, context),
              );
            },
          ),
          const SizedBox(height: Styles.smallerSpacing),
        ],
      ),
    );
  }

  Widget _buildArticleList(
    List<ArticleModel> list,
    bool isLoading,
    BuildContext context,
  ) {
    return Skeletonizer(
      enabled: isLoading,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, i) => GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(DetailArticleRoute(article: list[i]));
          },
          child: ArticleCardWidget(articleModel: list[i]),
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: Styles.defaultSpacing,
        ),
        itemCount: list.length,
      ),
    );
  }

  Widget _buildBreathingExerciseSectionWidget(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/home/breathing_bg.png'),
        ),
      ),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: Styles.biggerPadding,
        horizontal: Styles.defaultPadding,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.breathingExercise,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: Styles.defaultSpacing),
                Text(
                  context.l10n.breathingExerciseText,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(width: 2.w),
          Flexible(child: Container()),
          Flexible(
            flex: 3,
            child: CustomButton(
              buttonText: context.l10n.start,
              prefixIcon: UniconsLine.play,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOtherMeditationSectionWidget(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  context.l10n.otherMeditation,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              SizedBox(width: 1.w),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).navigate(MeditationRoute());
                },
                child: Text(
                  context.l10n.viewAll,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: ColorValues.secondary50),
                ),
              ),
            ],
          ),
          const SizedBox(height: Styles.mediumSpacing),
          Text(
            context.l10n.viewPlaylistText,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: ColorValues.grey50),
          ),
          const SizedBox(height: Styles.biggerSpacing),
          BlocBuilder<MeditationBloc, MeditationState>(
            bloc: _meditationBloc,
            builder: (context, state) {
              final dummyList =
                  List.generate(3, (index) => generateMockMeditationModel());
              return state.meditations.maybeMap(
                data: (s) => _buildMeditationList(s.data, false, context),
                orElse: () => _buildMeditationList(dummyList, true, context),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMeditationList(
    List<MeditationModel> list,
    bool isLoading,
    BuildContext context,
  ) {
    return Skeletonizer(
      enabled: isLoading,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, i) => GestureDetector(
          onTap: () {
            AutoRouter.of(context)
                .push(MeditationDetailRoute(meditationModel: list[i]));
          },
          child: MeditationCardWidget(meditationModel: list[i]),
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: Styles.mediumSpacing,
        ),
        itemCount: list.length,
      ),
    );
  }

  Widget _buildDayIntroductionSectionWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          alignment: Alignment.topRight,
          fit: BoxFit.fitHeight,
          image: AssetImage(
            'assets/home/intro_bg.png',
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(Styles.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.howIsYourDay,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.introductionDayText1,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: ColorValues.grey50),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5.w),
                Expanded(
                  flex: 4,
                  child: CustomButton(
                    fontSize: 16,
                    buttonText: context.l10n.introductionDayButtonText,
                    onPressed: () {
                      AutoRouter.of(context).navigate(const ChatbotRoute());
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopSearchWidget(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Row(
        children: [
          Expanded(
            child: CustomTextField(
              controller: _searchController,
              hint: context.l10n.findSomething,
              icon: UniconsLine.search,
              isDense: true,
            ),
          ),
          const SizedBox(width: Styles.defaultPadding),
          Container(
            height: 7.h,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Styles.defaultBorder),
              border: Border.all(color: ColorValues.primary10),
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
