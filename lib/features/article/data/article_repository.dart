
import 'package:calme_mobile/data/models/article/article_model.dart';

abstract class ArticleRepository {
  Future<List<ArticleModel>> getArticles();
}