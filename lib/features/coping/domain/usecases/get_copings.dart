import 'package:calme_mobile/data/models/coping/coping_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/coping/domain/repositories/coping_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class GetCopings
    implements UseCase<Either<Failure, List<CopingModel>>, None<void>> {
  GetCopings(this._repository);

  final CopingRepository _repository;

  @override
  Future<Either<Failure, List<CopingModel>>> call(None<void> _) {
    return _repository.getCopings();
  }
}
