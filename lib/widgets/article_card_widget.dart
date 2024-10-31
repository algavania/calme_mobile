import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/routes/router.dart';
import 'package:calme_mobile/util/extensions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ArticleCardWidget extends StatefulWidget {
  const ArticleCardWidget({required this.articleModel, super.key});

  final ArticleModel articleModel;

  @override
  State<ArticleCardWidget> createState() => _ArticleCardWidgetState();
}

class _ArticleCardWidgetState extends State<ArticleCardWidget> {
  final bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            AutoRouter.of(context).navigate(
              DetailArticleRoute(
                article: widget.articleModel,
              ),
            );
          },
          child: IntrinsicHeight(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(Styles.defaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: ColorValues.grey10),
                borderRadius: BorderRadius.circular(Styles.defaultBorder),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Styles.defaultBorder),
                    child: CachedNetworkImage(
                      imageUrl: widget.articleModel.thumbnailUrl,
                      width: 18.w,
                      height: 15.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: Styles.defaultSpacing),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.articleModel.title,
                          style:
                              Theme.of(context).textTheme
                                  .displaySmall?.copyWith(
                                    color: _isBookmarked
                                        ? Theme.of(context).primaryColor
                                        : null,
                                    decoration: _isBookmarked
                                        ? TextDecoration.underline
                                        : null,
                                  ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          widget.articleModel.content,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style:
                          Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(height: 1.h),
                        Expanded(child: Container()),
                        Flexible(
                          child: Text(
                            '${widget.articleModel.author}  •  '
                            '${widget.articleModel.createdAt
                                .toFormattedDate()}',
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: ColorValues.grey50,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Align(
        //   alignment: Alignment.topRight,
        //   child: InkWell(
        //     onTap: () {
        //       setState(() {
        //         _isBookmarked = !_isBookmarked;
        //       });
        //     },
        //     child: Container(
        //       padding: const EdgeInsets.all(6),
        //       decoration: BoxDecoration(
        //         color: _isBookmarked ? ColorValues.secondary50 :
        //         Colors.white,
        //         border: Border.all(color: ColorValues.grey10),
        //         borderRadius: const BorderRadius.only(
        //           bottomLeft: Radius.circular(Styles.defaultBorder),
        //           topRight: Radius.circular(Styles.defaultBorder),
        //         )
        //       ),
        //       child: Icon(UniconsLine.bookmark, size: 20,
        //         color: _isBookmarked ? Colors.white : ColorValues.grey10,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
