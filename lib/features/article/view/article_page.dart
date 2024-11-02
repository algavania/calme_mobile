import 'package:auto_route/annotations.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/features/article/bloc/article_bloc.dart';
import 'package:calme_mobile/features/article/data/article_repository.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/l10n/l10n.dart';
import 'package:calme_mobile/widgets/article_card_widget.dart';
import 'package:calme_mobile/widgets/custom_app_bar.dart';
import 'package:calme_mobile/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unicons/unicons.dart';

@RoutePage()
class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  final TextEditingController _searchController = TextEditingController();
  final _bloc = ArticleBloc(repository: Injector.instance<ArticleRepository>());

  @override
  void initState() {
    _bloc.add(const ArticleEvent.getArticles());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: context.l10n.article,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              // _buildTopSearchWidget(),
              // const SizedBox(height: Styles.defaultSpacing),
              _buildArticleSectionWidget(),
              const SizedBox(height: Styles.defaultSpacing),
            ],
          ),
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
              return state.maybeMap(
                loaded: (s) => _buildList(s.list, false),
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
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, i) => ArticleCardWidget(
        articleModel: list[i],
      ),
      separatorBuilder: (_, __) => const SizedBox(
        height: Styles.biggerSpacing,
      ),
      itemCount: list.length,
    );
  }

  Widget _buildTopSearchWidget() {
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
