import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';

import '../../../../../l10n/l10n.dart';
import '../../../../core/styles.dart';
import '../../../../widgets/back_button.dart';
import '../../../../widgets/rounded_button.dart';

@RoutePage()
class DetailArticlePage extends StatefulWidget {
  const DetailArticlePage({Key? key, required this.article}) : super(key: key);
  final ArticleModel article;

  @override
  State<DetailArticlePage> createState() => _DetailArticlePageState();
}

class _DetailArticlePageState extends State<DetailArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: Styles.defaultPadding),
            _buildAppBar(),
            const SizedBox(height: Styles.defaultSpacing),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: Styles.defaultSpacing),
                  _buildWriterSectionWidget(),
                  const SizedBox(height: Styles.defaultSpacing),
                  _buildArticleBody(),
                  const SizedBox(height: Styles.defaultSpacing),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildArticleBody() {
    return Padding(
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.article.title, style: Theme.of(context).textTheme.titleMedium,),
          const SizedBox(height: Styles.defaultSpacing,),
          SizedBox(
              height: 120,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(Styles.defaultBorder),
                  child: CachedNetworkImage(imageUrl: widget.article.thumbnailUrl, width: MediaQuery.of(context).size.width, fit: BoxFit.cover,))),
          const SizedBox(height: Styles.defaultSpacing,),
          Text(widget.article.content.replaceToNewLine(), style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: ColorValues.grey50
          )),
        ],
      ),
    );
  }

  Widget _buildWriterSectionWidget() {
    return Row(
      children: [
        const SizedBox(width: Styles.defaultPadding),
        RoundedButton(
            color: ColorValues.primary10,
            border: Border.all(color: ColorValues.primary20),
            child: const Icon(UniconsLine.user, color: ColorValues.primary50,)),
        const SizedBox(width: Styles.defaultPadding),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context).writer,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: ColorValues.grey50
                ),
              ),
              SizedBox(height: 0.5.h),
              Text(widget.article.author, style: Theme.of(context).textTheme.labelLarge,)
            ],
          ),
        ),
        // const SizedBox(width: Styles.defaultPadding),
        // RoundedButton(
        //     border: Border.all(color: ColorValues.grey10),
        //     child: const Icon(UniconsLine.share_alt, color: ColorValues.grey50)),
        const SizedBox(width: Styles.defaultPadding),
      ],
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: Styles.defaultPadding),
      child: Row(
        children: [
          const CustomBackButton(),
          Expanded(
              child: Text(
                AppLocalizations
                    .of(context)
                    .readArticle,
                textAlign: TextAlign.center,
                style: Theme
                    .of(context)
                    .textTheme
                    .labelLarge,
              )),
          const RoundedButton(color: Colors.transparent,child: SizedBox.shrink(),),
        ],
      ),
    );
  }
}
