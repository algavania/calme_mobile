import 'package:calme_mobile/error/exceptions.dart';
import 'package:health/health.dart';

abstract class FitConnectRemoteDataSource {
  Future<bool> requestHealthPermission();

  Future<int> getStepsCount();

  Future<List<HealthDataPoint>> getHeartRates();

  Future<List<HealthDataPoint>> getSleepQualities();
}

class FitConnectRemoteDataSourceImpl extends FitConnectRemoteDataSource {
  final _sleepTypes = [
    HealthDataType.SLEEP_ASLEEP,
    HealthDataType.SLEEP_AWAKE,
    HealthDataType.SLEEP_AWAKE_IN_BED,
    HealthDataType.SLEEP_DEEP,
    HealthDataType.SLEEP_IN_BED,
    HealthDataType.SLEEP_LIGHT,
    HealthDataType.SLEEP_OUT_OF_BED,
    HealthDataType.SLEEP_SESSION,
    HealthDataType.SLEEP_UNKNOWN,
  ];

  @override
  Future<List<HealthDataPoint>> getHeartRates() async {
    await requestHealthPermission();
    return _getHealthData([HealthDataType.HEART_RATE]);
  }

  @override
  Future<List<HealthDataPoint>> getSleepQualities() async {
    await requestHealthPermission();
    return _getHealthData(_sleepTypes);
  }

  Future<List<HealthDataPoint>> _getHealthData(
    List<HealthDataType> types,
  ) async {
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day);
    final res = await Health().getHealthDataFromTypes(
      types: types,
      startTime: midnight,
      endTime: now,
    );
    return res;
  }

  @override
  Future<int> getStepsCount() async {
    await requestHealthPermission();
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day);
    return await Health().getTotalStepsInInterval(midnight, now) ?? 0;
  }

  @override
  Future<bool> requestHealthPermission() async {
    if (!await Health().isHealthConnectAvailable()) {
      await Health().installHealthConnect();
    }
    final types = [
      HealthDataType.STEPS,
      HealthDataType.HEART_RATE,
      ..._sleepTypes,
    ];

    final requested = await Health().requestAuthorization(types);
    if (!requested) {
      throw Failure('Izinkan akses ke data kesehatan');
    }
    return true;
  }
}
