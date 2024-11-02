part of 'article_bloc.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState({
    required AsyncValue<List<ArticleModel>> articles,
  }) = _ArticleState;

  factory ArticleState.initial() => const ArticleState(
    articles: AsyncValue.loading(),
  );
}
