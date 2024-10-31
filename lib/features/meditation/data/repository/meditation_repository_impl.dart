import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/data/models/meditation/session_model.dart';
import 'package:calme_mobile/database/db_helper.dart';
import 'package:calme_mobile/features/meditation/data/repository/meditation_repository.dart';

class MeditationRepositoryImpl extends MeditationRepository {
  final db = DbHelper.db;

  @override
  Future<List<SessionModel>> getMeditationSessions(String meditationId) async {
    final list = <SessionModel>[];
    final snapshot = await db
        .collection(DbHelper.meditations)
        .doc(meditationId)
        .collection(DbHelper.sessions)
        .orderBy('order')
        .get();
    for (final data in snapshot.docs) {
      var model = SessionModel.fromJson(data.data());
      model = model.copyWith(id: data.id);
      list.add(model);
    }
    return list;
  }

  @override
  Future<List<MeditationModel>> getMeditations() async {
    final list = <MeditationModel>[];
    final snapshot = await db
        .collection(DbHelper.meditations)
        .orderBy('createdAt', descending: true)
        .get();
    for (final data in snapshot.docs) {
      var model = MeditationModel.fromJson(data.data());
      model = model.copyWith(id: data.id);
      list.add(model);
    }
    return list;
  }

}