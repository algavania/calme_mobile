import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/util/logger.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:health/health.dart';

final sleepTypes = [
  HealthDataType.SLEEP_ASLEEP,
  HealthDataType.SLEEP_AWAKE,
  HealthDataType.SLEEP_DEEP,
  HealthDataType.SLEEP_LIGHT,
  HealthDataType.SLEEP_REM,
];

abstract class FitConnectRemoteDataSource {
  Future<bool> requestHealthPermission();

  Future<int> getStepsCount();

  Future<List<HealthDataPoint>> getHeartRates();

  Future<List<HealthDataPoint>> getSleepQualities();

  Future<String> getAnalytics(int steps, List<HealthDataPoint> heartRates);
}

class FitConnectRemoteDataSourceImpl extends FitConnectRemoteDataSource {
  final _openAi = OpenAI.instance.build(
    token: dotenv.env['OPENAI_API_KEY'] ?? '',
    baseOption: HttpSetup(receiveTimeout: const Duration(minutes: 5)),
    enableLog: true,
  );

  @override
  Future<List<HealthDataPoint>> getHeartRates() async {
    final res = await _getHealthData([HealthDataType.HEART_RATE]);
    return res;
  }

  @override
  Future<List<HealthDataPoint>> getSleepQualities() async {
    // await requestHealthPermission();
    return _getHealthData(sleepTypes);
  }

  Future<List<HealthDataPoint>> _getHealthData(
    List<HealthDataType> types,
  ) async {
    final now = DateTime.now();
    // now = DateTime(now.year, now.month, now.day - 1, 23);
    final midnight = DateTime(now.year, now.month, now.day);
    final res = await Health().getHealthDataFromTypes(
      types: types,
      startTime: midnight,
      endTime: now,
    );
    logger.d('health data $types ${res.length} $midnight $now');
    return res;
  }

  @override
  Future<int> getStepsCount() async {
    final now = DateTime.now();
    // now = DateTime(now.year, now.month, now.day - 1, 23, 59);
    final midnight = DateTime(now.year, now.month, now.day);
    final res = await Health().getTotalStepsInInterval(midnight, now) ?? 0;
    logger.d('steps count $res');
    return res;
  }

  @override
  Future<bool> requestHealthPermission() async {
    if (!await Health().isHealthConnectAvailable()) {
      await Health().installHealthConnect();
    }
    final types = [
      HealthDataType.STEPS,
      HealthDataType.HEART_RATE,
      ...sleepTypes,
    ];

    final requested = await Health().requestAuthorization(types);
    if (!requested) {
      throw Failure('Izinkan akses ke data kesehatan');
    }
    return true;
  }

  @override
  Future<String> getAnalytics(
    int steps,
    List<HealthDataPoint> heartRates,
  ) async {
    final requestText = <Messages>[
      Messages(
        role: Role.system,
        content: 'Kamu adalah ahli analisis data kesehatan.',
      ),
      Messages(
        role: Role.user,
        content: 'Total langkah harian saya hari ini adalah $steps langkah. '
            'Heart rate saya adalah '
            '${heartRates.map(
                  (e) => '${e.value} pada ${e.dateFrom} '
                      '- ${e.dateTo}',
                ).toList()}. Berikan analisis pada data kesehatan '
            'dan rekomendasi kepada saya dalam paragraf singkat.',
      ),
    ];
    final request = ChatCompleteText(
      messages: requestText.map((e) => e.toJson()).toList(),
      maxToken: 500,
      model: Gpt4ChatModel(),
    );
    final response = await _openAi.onChatCompletion(request: request);
    var text = '';
    for (final element in response?.choices ?? []) {
      text += element.message?.content.toString() ?? '';
      logger.d('data -> ${element.message?.content}');
    }
    return text;
  }
}
