part of 'meditation_bloc.dart';

@freezed
class MeditationState with _$MeditationState {
  const factory MeditationState({
    required AsyncValue<List<MeditationModel>> meditations,
  }) = _MeditationState;

  factory MeditationState.initial() => const MeditationState(
    meditations: AsyncValue.loading(),
  );
}
