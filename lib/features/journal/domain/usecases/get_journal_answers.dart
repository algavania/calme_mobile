import 'package:calme_mobile/data/models/journal/journal_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/journal/domain/repositories/journal_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class GetJournalAnswers
    implements UseCase<Either<Failure, List<JournalAnswerModel>>, String> {
  GetJournalAnswers(this._repository);

  final JournalRepository _repository;

  @override
  Future<Either<Failure, List<JournalAnswerModel>>> call(String params) {
    return _repository.getJournalAnswers(params);
  }
}
