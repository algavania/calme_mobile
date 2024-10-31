import 'package:calme_mobile/data/models/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_model.freezed.dart';

part 'article_model.g.dart';

@freezed
class ArticleModel with _$ArticleModel {
  const factory ArticleModel({
    required String author,
    required String content,
    required String thumbnailUrl,
    required String title,
    @TimestampConverter() required DateTime createdAt,
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, Object?> json) =>
      _$ArticleModelFromJson(json);
}

ArticleModel generateMockArticleModel() {
  return ArticleModel(
    title: 'Lorem ipsum',
    content: 'Lorem ipsum',
    author: 'Admin',
    thumbnailUrl:
        'https://firebasestorage.googleapis.com/v0/b/calme-64dbe.appspot.com/o/articles%2FVKB7jp23BdBO2k3Wn9Kw%2Fthumbnail.png?alt=media&token=4833b812-7972-459a-b2a5-ec575c15359c',
    createdAt: DateTime.now(),
  );
}
