part of 'meditation_bloc.dart';

@freezed
class MeditationState with _$MeditationState {
  const factory MeditationState.initial() = _Initial;
  const factory MeditationState.loading() = _Loading;
  const factory MeditationState.error(String error) = _Error;
  const factory MeditationState.loaded(List<MeditationModel> list) = _Loaded;
}
