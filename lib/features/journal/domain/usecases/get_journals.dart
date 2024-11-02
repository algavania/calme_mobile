import 'package:calme_mobile/data/models/journal/journal_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/journal/domain/repositories/journal_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class GetJournals
    implements UseCase<Either<Failure, List<JournalModel>>, None<void>> {
  GetJournals(this._repository);

  final JournalRepository _repository;

  @override
  Future<Either<Failure, List<JournalModel>>> call(None<void> _) {
    return _repository.getAllJournals();
  }
}
