import 'package:calme_mobile/data/models/article/article_model.dart';
import 'package:calme_mobile/database/db_helper.dart';

abstract class ArticleRemoteDataSource {
  Future<List<ArticleModel>> getArticles();
}

class ArticleRemoteDataSourceImpl extends ArticleRemoteDataSource {
  final db = DbHelper.db;

  @override
  Future<List<ArticleModel>> getArticles() async {
    final list = <ArticleModel>[];
    final snapshot = await db.collection(DbHelper.articles).get();
    for (final data in snapshot.docs) {
      var model = ArticleModel.fromJson(data.data());
      model = model.copyWith(id: data.id);
      list.add(model);
    }
    return list;
  }
}
