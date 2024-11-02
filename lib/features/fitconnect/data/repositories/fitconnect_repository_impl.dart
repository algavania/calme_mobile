import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/fitconnect/data/datasources/fitconnect_remote_datasource.dart';
import 'package:calme_mobile/features/fitconnect/domain/repositories/fitconnect_repository.dart';
import 'package:calme_mobile/util/helper.dart';
import 'package:dartz/dartz.dart';
import 'package:health/health.dart';

class FitConnectRepositoryImpl extends FitConnectRepository {
  FitConnectRepositoryImpl(this.dataSource);

  final FitConnectRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<HealthDataPoint>>> getHeartRates() {
    return safeCall(dataSource.getHeartRates);
  }

  @override
  Future<Either<Failure, List<HealthDataPoint>>> getSleepQualities() {
    return safeCall(dataSource.getSleepQualities);
  }

  @override
  Future<Either<Failure, int>> getStepsCount() {
    return safeCall(dataSource.getStepsCount);
  }

  @override
  Future<Either<Failure, bool>> requestHealthPermission() {
    return safeCall(dataSource.requestHealthPermission);
  }
}
