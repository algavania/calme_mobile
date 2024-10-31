part of 'article_bloc.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState.initial() = _Initial;
  const factory ArticleState.loading() = _Loading;
  const factory ArticleState.error(String error) = _Error;
  const factory ArticleState.loaded(List<ArticleModel> list) = _Loaded;
}
