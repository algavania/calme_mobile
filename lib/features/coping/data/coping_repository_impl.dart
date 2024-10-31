import 'package:calme_mobile/data/models/coping/coping_model.dart';
import 'package:calme_mobile/database/db_helper.dart';
import 'package:calme_mobile/features/coping/data/coping_repository.dart';

class CopingRepositoryImpl extends CopingRepository {
  final db = DbHelper.db;

  @override
  Future<List<CopingModel>> getCopings() async {
    final list = <CopingModel>[];
    final snapshot = await db.collection(DbHelper.copings).get();
    for (final data in snapshot.docs) {
      var model = CopingModel.fromJson(data.data());
      model = model.copyWith(id: data.id);
      list.add(model);
    }
    return list;
  }

}