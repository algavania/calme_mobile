import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/fitconnect/domain/repositories/fitconnect_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';
import 'package:health/health.dart';

class GetSleepQuality
    implements UseCase<Either<Failure, List<HealthDataPoint>>, None<void>> {
  GetSleepQuality(this._repository);

  final FitConnectRepository _repository;

  @override
  Future<Either<Failure, List<HealthDataPoint>>> call(None<void> _) {
    return _repository.getSleepQualities();
  }
}
