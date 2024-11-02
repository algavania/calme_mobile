import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/fitconnect/domain/repositories/fitconnect_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';

class GetStepsCount
    implements UseCase<Either<Failure, int>, None<void>> {
  GetStepsCount(this._repository);

  final FitConnectRepository _repository;

  @override
  Future<Either<Failure, int>> call(None<void> _) {
    return _repository.getStepsCount();
  }
}
