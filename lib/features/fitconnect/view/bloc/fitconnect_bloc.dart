import 'package:bloc/bloc.dart';
import 'package:calme_mobile/core/async_value.dart';
import 'package:calme_mobile/features/fitconnect/data/datasources/fitconnect_remote_datasource.dart';
import 'package:calme_mobile/features/fitconnect/domain/usecases/get_analytics.dart';
import 'package:calme_mobile/features/fitconnect/domain/usecases/get_heart_rates.dart';
import 'package:calme_mobile/features/fitconnect/domain/usecases/get_sleep_quality.dart';
import 'package:calme_mobile/features/fitconnect/domain/usecases/get_steps_count.dart';
import 'package:calme_mobile/features/fitconnect/domain/usecases/request_health_permissions.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health/health.dart';

part 'fitconnect_event.dart';

part 'fitconnect_state.dart';

part 'fitconnect_bloc.freezed.dart';

class FitconnectBloc extends Bloc<FitconnectEvent, FitconnectState> {
  FitconnectBloc() : super(FitconnectState.initial()) {
    on<_GetHeartRates>(
      _onGetHeartRatesEvent,
    );
    on<_GetSleepQuality>(
      _onGetSleepQualityEvent,
    );
    on<_GetStepsCount>(
      _onGetStepsCountEvent,
    );
    on<_RequestHealthPermissions>(
      _onRequestHealthPermissionsEvent,
    );
    on<_CheckHealthConnect>(
      _onCheckHealthConnectEvent,
    );
    on<_GetAnalytics>(
      _onGetAnalyticsEvent,
    );
  }

  final _getHeartRates = Injector.instance<GetHeartRates>();
  final _getSleepQuality = Injector.instance<GetSleepQuality>();
  final _getStepsCount = Injector.instance<GetStepsCount>();
  final _requestHealthPermissions =
      Injector.instance<RequestHealthPermissions>();
  final _getAnalytics = Injector.instance<GetAnalytics>();

  Future<void> _onGetAnalyticsEvent(
    _GetAnalytics event,
    Emitter<FitconnectState> emit,
  ) async {
    emit(state.copyWith(analytics: const AsyncValue.loading()));
    final steps =
        state.stepsCount.maybeMap(orElse: () => 0, data: (data) => data.data);
    final heartRates = state.heartRates
        .maybeMap(orElse: () => <HealthDataPoint>[], data: (data) => data.data);
    final res = await _getAnalytics.call(GetAnalyticsParams(steps, heartRates));
    res.fold(
      (failure) {
        emit(state.copyWith(analytics: AsyncValue.error(failure.message)));
      },
      (data) {
        emit(state.copyWith(analytics: AsyncValue.data(data)));
      },
    );
  }

  Future<void> _onCheckHealthConnectEvent(
    _CheckHealthConnect event,
    Emitter<FitconnectState> emit,
  ) async {
    emit(state.copyWith(isHealthConnectAvailable: const AsyncValue.loading()));
    final res = await Health().isHealthConnectAvailable() &&
        (await Health().hasPermissions([
              HealthDataType.STEPS,
              HealthDataType.HEART_RATE,
              ...sleepTypes,
            ]) ??
            false);
    emit(
      state.copyWith(
        isHealthConnectAvailable: AsyncValue.data(res),
      ),
    );
    if (res) {
      add(const FitconnectEvent.getStepsCount());
      add(const FitconnectEvent.getHeartRates());
      add(const FitconnectEvent.getSleepQuality());
    }
  }

  Future<void> _onRequestHealthPermissionsEvent(
    _RequestHealthPermissions event,
    Emitter<FitconnectState> emit,
  ) async {
    emit(state.copyWith(isHealthConnectAvailable: const AsyncValue.loading()));
    final res = await _requestHealthPermissions.call(const None());
    res.fold(
      (failure) {
        emit(
          state.copyWith(
            isHealthConnectAvailable: AsyncValue.error(failure.message),
          ),
        );
      },
      (data) {
        emit(state.copyWith(isHealthConnectAvailable: AsyncValue.data(data)));
      },
    );
  }

  Future<void> _onGetStepsCountEvent(
    _GetStepsCount event,
    Emitter<FitconnectState> emit,
  ) async {
    emit(state.copyWith(stepsCount: const AsyncValue.loading()));
    final res = await _getStepsCount.call(const None());
    res.fold(
      (failure) {
        emit(state.copyWith(stepsCount: AsyncValue.error(failure.message)));
      },
      (data) {
        emit(state.copyWith(stepsCount: AsyncValue.data(data)));
      },
    );
  }

  Future<void> _onGetSleepQualityEvent(
    _GetSleepQuality event,
    Emitter<FitconnectState> emit,
  ) async {
    emit(state.copyWith(sleepQualities: const AsyncValue.loading()));
    final res = await _getSleepQuality.call(const None());
    res.fold(
      (failure) {
        emit(state.copyWith(sleepQualities: AsyncValue.error(failure.message)));
      },
      (data) {
        emit(state.copyWith(sleepQualities: AsyncValue.data(data)));
      },
    );
  }

  Future<void> _onGetHeartRatesEvent(
    _GetHeartRates event,
    Emitter<FitconnectState> emit,
  ) async {
    emit(state.copyWith(heartRates: const AsyncValue.loading()));
    final res = await _getHeartRates.call(const None());
    res.fold(
      (failure) {
        emit(state.copyWith(heartRates: AsyncValue.error(failure.message)));
      },
      (data) {
        emit(state.copyWith(heartRates: AsyncValue.data(data)));
      },
    );
  }
}
