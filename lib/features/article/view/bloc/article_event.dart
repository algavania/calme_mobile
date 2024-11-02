part of 'article_bloc.dart';

@freezed
class ArticleEvent with _$ArticleEvent {
  const factory ArticleEvent.started() = _Started;
  const factory ArticleEvent.getArticles() = _GetArticles;
}
