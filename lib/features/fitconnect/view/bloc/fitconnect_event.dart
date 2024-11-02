part of 'fitconnect_bloc.dart';

@freezed
class FitconnectEvent with _$FitconnectEvent {
  const factory FitconnectEvent.started() = _Started;

  const factory FitconnectEvent.checkHealthConnect() = _CheckHealthConnect;

  const factory FitconnectEvent.getHeartRates() = _GetHeartRates;

  const factory FitconnectEvent.getSleepQuality() = _GetSleepQuality;

  const factory FitconnectEvent.getStepsCount() = _GetStepsCount;

  const factory FitconnectEvent.requestHealthPermissions() =
      _RequestHealthPermissions;

  const factory FitconnectEvent.getAnalytics() = _GetAnalytics;
}
