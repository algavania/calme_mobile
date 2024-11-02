import 'package:calme_mobile/error/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:health/health.dart';

abstract class FitConnectRepository {
  Future<Either<Failure, bool>> requestHealthPermission();

  Future<Either<Failure, int>> getStepsCount();

  Future<Either<Failure, List<HealthDataPoint>>> getHeartRates();

  Future<Either<Failure, List<HealthDataPoint>>> getSleepQualities();

  Future<Either<Failure, String>> getAnalytics(
    int steps,
    List<HealthDataPoint> heartRates,
  );
}
