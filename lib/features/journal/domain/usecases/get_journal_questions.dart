import 'package:calme_mobile/data/models/journal/question_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/journal/domain/repositories/journal_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class GetJournalQuestions
    implements UseCase<Either<Failure, List<QuestionModel>>, String> {
  GetJournalQuestions(this._repository);

  final JournalRepository _repository;

  @override
  Future<Either<Failure, List<QuestionModel>>> call(String params) {
    return _repository.getJournalQuestions(params);
  }
}
