import 'package:calme_mobile/data/models/journal/journal_model.dart';
import 'package:calme_mobile/data/models/journal/question_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:dartz/dartz.dart';

abstract class JournalRepository {
  Future<Either<Failure, List<JournalModel>>> getAllJournals();

  Future<Either<Failure, List<QuestionModel>>> getJournalQuestions(
    String journalId,
  );

  Future<Either<Failure, List<JournalAnswerModel>>> getJournalAnswers(
    String journalId,
  );

  Future<Either<Failure, void>> saveJournalAnswers(
    String journalId,
    List<JournalAnswerModel> list,
  );
}
