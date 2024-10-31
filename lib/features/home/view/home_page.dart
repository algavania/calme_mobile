import 'package:auto_route/auto_route.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/features/article/bloc/article_bloc.dart';
import 'package:calme_mobile/features/article/data/article_repository.dart';
import 'package:calme_mobile/features/meditation/bloc/meditation_bloc.dart';
import 'package:calme_mobile/features/meditation/data/repository/meditation_repository.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:calme_mobile/widgets/article_card_widget.dart';
import 'package:calme_mobile/widgets/custom_app_bar.dart';
import 'package:calme_mobile/widgets/custom_button.dart';
import 'package:calme_mobile/widgets/custom_text_field.dart';
import 'package:calme_mobile/widgets/glowing_image_widget.dart';
import 'package:calme_mobile/widgets/meditation_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:unicons/unicons.dart';

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

  @override
  void initState() {
    _meditationBloc.add(const MeditationEvent.getAllMeditations());
    _articleBloc.add(const ArticleEvent.getArticles());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context).home,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildDayIntroductionSectionWidget(),
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
                    AppLocalizations.of(context).copingToolbox,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: Styles.defaultSpacing,
                  ),
                  Text(
                    AppLocalizations.of(context).copingText,
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
                  AppLocalizations.of(context).articleSectionText1,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              SizedBox(width: 1.w),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).navigate(const ArticleRoute());
                },
                child: Text(
                  AppLocalizations.of(context).viewAll,
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
            AppLocalizations.of(context).articleSectionText2,
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
                  AppLocalizations.of(context).breathingExercise,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: Styles.defaultSpacing),
                Text(
                  AppLocalizations.of(context).breathingExerciseText,
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
              buttonText: AppLocalizations.of(context).start,
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
                  AppLocalizations.of(context).otherMeditation,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              SizedBox(width: 1.w),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).navigate(const MeditationRoute());
                },
                child: Text(
                  AppLocalizations.of(context).viewAll,
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
            AppLocalizations.of(context).viewPlaylistText,
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
              AppLocalizations.of(context).howIsYourDay,
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
                        AppLocalizations.of(context).introductionDayText1,
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
                        AppLocalizations.of(context).introductionDayButtonText,
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
              hint: AppLocalizations.of(context).findSomething,
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
