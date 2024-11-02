import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/article/data/datasources/article_remote_datasource.dart';
import 'package:calme_mobile/features/article/domain/repositories/article_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  ArticleRepositoryImpl(this.dataSource);

  final ArticleRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<ArticleModel>>> getArticles() async {
    return safeCall(dataSource.getArticles);
  }
}
