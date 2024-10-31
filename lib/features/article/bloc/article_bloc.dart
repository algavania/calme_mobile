import 'package:bloc/bloc.dart';
import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/features/article/data/article_repository.dart';
import 'package:calme_mobile/util/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_event.dart';
part 'article_state.dart';
part 'article_bloc.freezed.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleBloc({
    required ArticleRepository repository,
  }) : super(
    const ArticleState.initial(),
  ) {
    _repository = repository;

    on<_GetArticles>(
      _onGetAllArticlesEvent,
    );
  }
  late final ArticleRepository _repository;

  Future<void> _onGetAllArticlesEvent(
      _GetArticles event,
      Emitter<ArticleState> emit,
      ) async {
    emit(const ArticleState.loading());
    try {
      final list = await _repository.getArticles();
      emit(ArticleState.loaded(list));
    } catch (e, s) {
      logger.e(e.toString(), stackTrace: s);
      emit(ArticleState.error(e.toString()));
    }
  }
}
