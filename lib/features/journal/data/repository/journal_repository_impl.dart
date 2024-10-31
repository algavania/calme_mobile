import 'package:calme_mobile/data/models/journal/journal_model.dart';
import 'package:calme_mobile/data/models/journal/question_model.dart';
import 'package:calme_mobile/database/db_helper.dart';
import 'package:calme_mobile/features/journal/data/repository/journal_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class JournalRepositoryImpl extends JournalRepository {
  final db = DbHelper.db;
  final auth = DbHelper.auth;

  @override
  Future<List<JournalModel>> getAllJournals() async {
    final list = <JournalModel>[];
    final snapshot = await db.collection(DbHelper.journals).get();
    for (final data in snapshot.docs) {
      var model = JournalModel.fromJson(data.data());
      model = model.copyWith(id: data.id);
      list.add(model);
    }
    return list;
  }

  @override
  Future<List<JournalAnswerModel>> getJournalAnswers(String journalId) async {
    final list = <JournalAnswerModel>[];
    final snapshot = await db
        .collection(DbHelper.journals)
        .doc(journalId)
        .collection(DbHelper.users)
        .doc(auth.currentUser!.uid)
        .collection(DbHelper.journalAnswers)
        .get();
    for (final data in snapshot.docs) {
      var model = JournalAnswerModel.fromJson(data.data());
      model = model.copyWith(id: data.id);
      list.add(model);
    }
    return list;
  }

  @override
  Future<void> saveJournalAnswers(
      String journalId, List<JournalAnswerModel> list) async {
    final uid = auth.currentUser!.uid;
    final batch = db.batch();
    final ref = db
        .collection(DbHelper.journals)
        .doc(journalId)
        .collection(DbHelper.users)
        .doc(uid)
        .collection(DbHelper.journalAnswers);
    for (final data in list) {
      batch.set(
          ref.doc(data.questionId), data.toJson(), SetOptions(merge: true));
    }
    await batch.commit();
  }

  @override
  Future<List<QuestionModel>> getJournalQuestions(String journalId) async {
    final list = <QuestionModel>[];
    final snapshot = await db
        .collection(DbHelper.journals)
        .doc(journalId)
        .collection(DbHelper.questions)
        .orderBy('order')
        .get();
    for (final data in snapshot.docs) {
      var model = QuestionModel.fromJson(data.data());
      model = model.copyWith(id: data.id);
      list.add(model);
    }
    return list;
  }
}
