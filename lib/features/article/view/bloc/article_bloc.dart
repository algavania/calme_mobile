import 'package:bloc/bloc.dart';
import 'package:calme_mobile/core/async_value.dart';
import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/features/article/domain/usecases/get_articles.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_event.dart';

part 'article_state.dart';

part 'article_bloc.freezed.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleBloc()
      : super(
          ArticleState.initial(),
        ) {
    on<_GetArticles>(
      _onGetAllArticlesEvent,
    );
  }

  final _getArticles = Injector.instance<GetArticles>();

  Future<void> _onGetAllArticlesEvent(
    _GetArticles event,
    Emitter<ArticleState> emit,
  ) async {
    emit(state.copyWith(articles: const AsyncValue.loading()));
    final res = await _getArticles.call(const None());
    res.fold((failure) {
      emit(state.copyWith(articles: AsyncValue.error(failure.message)));
    }, (data) {
      emit(state.copyWith(articles: AsyncValue.data(data)));
    });
  }
}
