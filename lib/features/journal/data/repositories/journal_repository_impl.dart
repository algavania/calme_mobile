import 'package:calme_mobile/data/models/journal/journal_model.dart';
import 'package:calme_mobile/data/models/journal/question_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/journal/data/datasources/journal_remote_datasource.dart';
import 'package:calme_mobile/features/journal/domain/repositories/journal_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class JournalRepositoryImpl extends JournalRepository {
  JournalRepositoryImpl(this.dataSource);

  final JournalRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<JournalModel>>> getAllJournals() {
    return safeCall(dataSource.getAllJournals);
  }

  @override
  Future<Either<Failure, List<JournalAnswerModel>>> getJournalAnswers(
    String journalId,
  ) {
    return safeCall(() => dataSource.getJournalAnswers(journalId));
  }

  @override
  Future<Either<Failure, List<QuestionModel>>> getJournalQuestions(
    String journalId,
  ) {
    return safeCall(() => dataSource.getJournalQuestions(journalId));
  }

  @override
  Future<Either<Failure, void>> saveJournalAnswers(
    String journalId,
    List<JournalAnswerModel> list,
  ) {
    return safeCall(() => dataSource.saveJournalAnswers(journalId, list));
  }
}
