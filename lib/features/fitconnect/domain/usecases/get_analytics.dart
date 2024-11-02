import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/fitconnect/domain/repositories/fitconnect_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';
import 'package:health/health.dart';

class GetAnalyticsParams {
  GetAnalyticsParams(this.steps, this.heartRates);

  final int steps;
  final List<HealthDataPoint> heartRates;
}

class GetAnalytics
    implements UseCase<Either<Failure, String>, GetAnalyticsParams> {
  GetAnalytics(this._repository);

  final FitConnectRepository _repository;

  @override
  Future<Either<Failure, String>> call(GetAnalyticsParams params) {
    return _repository.getAnalytics(params.steps, params.heartRates);
  }
}
