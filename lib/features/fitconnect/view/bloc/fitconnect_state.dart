part of 'fitconnect_bloc.dart';

@freezed
class FitconnectState with _$FitconnectState {
  const factory FitconnectState({
    required AsyncValue<int> stepsCount,
    required AsyncValue<List<HealthDataPoint>> heartRates,
    required AsyncValue<List<HealthDataPoint>> sleepQualities,
    required AsyncValue<bool> isHealthConnectAvailable,
  }) = _FitconnectState;

  factory FitconnectState.initial() => const FitconnectState(
    stepsCount: AsyncValue.loading(),
    heartRates: AsyncValue.loading(),
    sleepQualities: AsyncValue.loading(),
    isHealthConnectAvailable: AsyncValue.loading(),
  );
}
