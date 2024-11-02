import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/features/article/bloc/article_bloc.dart';
import 'package:calme_mobile/features/article/data/article_repository.dart';
import 'package:calme_mobile/features/article/view/detail_article_page.dart';
import 'package:calme_mobile/features/meditation/bloc/meditation_bloc.dart';
import 'package:calme_mobile/features/meditation/data/repository/meditation_repository.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:calme_mobile/util/logger.dart';
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
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final _meditationBloc =
      MeditationBloc(repository: Injector.instance<MeditationRepository>());
  final _articleBloc =
      ArticleBloc(repository: Injector.instance<ArticleRepository>());
  var _currentStepCount = 0;
  final _stepGoal = 10000;
  var _currentHeartRate = 0;
  var _hasInstallHealthConnect = false;

  @override
  void initState() {
    _getData();
    super.initState();
  }

  void _getData() {
    _meditationBloc.add(const MeditationEvent.getAllMeditations());
    _articleBloc.add(const ArticleEvent.getArticles());
    Health().isHealthConnectAvailable().then((value) {
      setState(() {
        _hasInstallHealthConnect = value;
      });
      if (_hasInstallHealthConnect) {
        fetchStepData().then(
          (value) {
            setState(() {});
          },
          onError: (error) {
            context.showSnackBar(
              message: error.toString(),
              isSuccess: false,
            );
          },
        );
      }
    });
  }

  Future<void> fetchStepData() async {
    int? steps;
    int? heartRates;

    // define the types to get
    final types = [
      HealthDataType.STEPS,
      HealthDataType.HEART_RATE,
    ];

    // requesting access to the data types before reading them
    final requested = await Health().requestAuthorization(types);
    if (!requested) {
      throw 'Izinkan akses ke data kesehatan';
    }
    // get steps for today (i.e., since midnight)
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day);

    var stepsPermission =
        await Health().hasPermissions([HealthDataType.STEPS]) ?? false;
    if (!stepsPermission) {
      stepsPermission =
          await Health().requestAuthorization([HealthDataType.STEPS]);
    }

    if (stepsPermission) {
      try {
        steps = await Health().getTotalStepsInInterval(midnight, now);
      } catch (error) {
        logger.d('Exception in getTotalStepsInInterval: $error');
      }

      logger.d('Total number of steps: $steps');
    }

    var heartRatePermission =
        await Health().hasPermissions([HealthDataType.HEART_RATE]) ?? false;
    if (!heartRatePermission) {
      heartRatePermission =
          await Health().requestAuthorization([HealthDataType.HEART_RATE]);
    }

    if (heartRatePermission) {
      try {
        // Fetch heart rate data
        final heartRateData =
            await Health().getHealthDataFromTypes(
          startTime: midnight,
          endTime: now,
          types: [HealthDataType.HEART_RATE],
        );
        final value = heartRateData.last.value.toJson()['numericValue'];
        _currentHeartRate = int.parse(value.toString());
      } catch (error) {
        logger.d('Exception while fetching heart rate data: $error');
      }

      logger.d('Latest heart rate: $heartRates');
    }
    _currentStepCount = steps ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                _buildDayIntroductionSectionWidget(),
                const SizedBox(height: Styles.defaultSpacing),
                _buildFitnessWidget(),
                const SizedBox(height: Styles.defaultSpacing),
                _buildCopingToolboxWidget(),
                // const SizedBox(height: Styles.defaultSpacing),
                // _buildMeditationSectionWidget(),
                const SizedBox(height: Styles.defaultSpacing),
                _buildOtherMeditationSectionWidget(),
                // const SizedBox(height: Styles.defaultSpacing),
                // _buildBreathingExerciseSectionWidget(),
                const SizedBox(height: Styles.defaultSpacing),
                _buildArticleSectionWidget(),
                const SizedBox(height: Styles.defaultSpacing),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFitnessWidget() {
    return Container(
      width: _hasInstallHealthConnect ? null : 100.w,
      color: Colors.white,
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: _hasInstallHealthConnect
          ? SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStepWidget(),
                    const SizedBox(
                      width: Styles.defaultSpacing,
                    ),
                    _buildHeartRateWidget(),
                  ],
                ),
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Styles.defaultSpacing,
                ),
                Text(
                  'Hubungkan Health Connect untuk melihat data kesehatanmu.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: Styles.bigSpacing,
                ),
                CustomButton(
                  buttonText: 'Hubungkan',
                  onPressed: () async {
                    if (!_hasInstallHealthConnect) {
                      await Health().installHealthConnect();
                    }
                    _hasInstallHealthConnect =
                        await Health().isHealthConnectAvailable();
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: Styles.defaultSpacing,
                ),
              ],
            ),
    );
  }

  Widget _buildHeartRateWidget() {
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
                                    text: _currentHeartRate.toString(),
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

  Widget _buildStepWidget() {
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
                          text: _currentStepCount.toString(),
                          style: Theme.of(context).textTheme.labelLarge,
                          children: [
                            TextSpan(
                              text: '\n/$_stepGoal',
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
            percent: _currentStepCount / _stepGoal,
            progressColor: Theme.of(context).primaryColor,
            backgroundColor: ColorValues.grey10,
          ),
        ],
      ),
    );
  }

  Widget _buildCopingToolboxWidget() {
    final color = Theme.of(context).primaryColor;
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(const CopingRoute());
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

  Widget _buildArticleSectionWidget() {
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
                  AutoRouter.of(context).navigate(const ArticleRoute());
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
              return state.maybeMap(
                loaded: (s) => _buildArticleList(s.list, false),
                orElse: () => _buildArticleList(dummyList, true),
              );
            },
          ),
          const SizedBox(height: Styles.smallerSpacing),
        ],
      ),
    );
  }

  Widget _buildArticleList(List<ArticleModel> list, bool isLoading) {
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
          height: Styles.mediumSpacing,
        ),
        itemCount: list.length,
      ),
    );
  }

  Widget _buildBreathingExerciseSectionWidget() {
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

  Widget _buildOtherMeditationSectionWidget() {
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
                  AutoRouter.of(context).navigate(const MeditationRoute());
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
              return state.maybeMap(
                loaded: (s) => _buildMeditationList(s.list, false),
                orElse: () => _buildMeditationList(dummyList, true),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMeditationList(List<MeditationModel> list, bool isLoading) {
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

  Widget _buildDayIntroductionSectionWidget() {
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
                    buttonText:
                        context.l10n.introductionDayButtonText,
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

  Widget _buildTopSearchWidget() {
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
