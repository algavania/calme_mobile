import 'package:calme_mobile/data/models/journal/journal_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/journal/domain/repositories/journal_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class SaveJournalAnswersParams {
  SaveJournalAnswersParams(this.journalId, this.list);

  final String journalId;
  final List<JournalAnswerModel> list;
}

class SaveJournalAnswers
    implements UseCase<Either<Failure, void>, SaveJournalAnswersParams> {
  SaveJournalAnswers(this._repository);

  final JournalRepository _repository;

  @override
  Future<Either<Failure, void>> call(SaveJournalAnswersParams params) {
    return _repository.saveJournalAnswers(params.journalId, params.list);
  }
}
