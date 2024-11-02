part of 'meditation_bloc.dart';

@freezed
class MeditationEvent with _$MeditationEvent {
  const factory MeditationEvent.started() = _Started;
  const factory MeditationEvent.getAllMeditations() = _GetAllMeditations;
}
