import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/article/domain/repositories/article_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class GetArticles
    implements UseCase<Either<Failure, List<ArticleModel>>, None<void>> {
  GetArticles(this._repository);

  final ArticleRepository _repository;

  @override
  Future<Either<Failure, List<ArticleModel>>> call(None<void> _) {
    return _repository.getArticles();
  }
}
