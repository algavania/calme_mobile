import 'package:auto_route/annotations.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/features/article/view/bloc/article_bloc.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:calme_mobile/util/logger.dart';
import 'package:calme_mobile/widgets/article_card_widget.dart';
import 'package:calme_mobile/widgets/custom_app_bar.dart';
import 'package:calme_mobile/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:unicons/unicons.dart';

@RoutePage()
class ArticlePage extends StatelessWidget {
  ArticlePage({super.key});

  final TextEditingController _searchController = TextEditingController();

  final _bloc = Injector.instance<ArticleBloc>();

  void _getData() {
    _bloc.add(const ArticleEvent.getArticles());
  }

  @override
  Widget build(BuildContext context) {
    _getData();
    logger.d('rebuild build article');
    return BlocListener<ArticleBloc, ArticleState>(
      bloc: _bloc,
      listener: (context, state) {
        state.articles.maybeWhen(
          orElse: () {},
          error: (s) {
            context.showSnackBar(message: s, isSuccess: false);
          },
        );
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: context.l10n.article,
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
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  // _buildTopSearchWidget(),
                  // const SizedBox(height: Styles.defaultSpacing),
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
            bloc: _bloc,
            builder: (context, state) {
              final list = List.generate(5, (_) => generateMockArticleModel());
              return state.articles.maybeMap(
                data: (s) => _buildList(s.data, false),
                orElse: () => _buildList(list, true),
              );
            },
          ),
          const SizedBox(height: Styles.smallerSpacing),
        ],
      ),
    );
  }

  Widget _buildList(List<ArticleModel> list, bool isLoading) {
    return Skeletonizer(
      enabled: isLoading,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_, i) => ArticleCardWidget(
          articleModel: list[i],
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: Styles.biggerSpacing,
        ),
        itemCount: list.length,
      ),
    );
  }

  Widget _buildTopSearchWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Styles.defaultPadding),
      child: CustomTextField(
        controller: _searchController,
        hint: context.l10n.findInterestingArticle,
        icon: UniconsLine.search,
        isDense: true,
      ),
    );
  }
}
