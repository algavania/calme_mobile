import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<ArticleModel>>> getArticles();
}
