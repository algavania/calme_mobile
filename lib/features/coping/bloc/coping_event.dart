part of 'coping_bloc.dart';

@freezed
class CopingEvent with _$CopingEvent {
  const factory CopingEvent.started() = _Started;
  const factory CopingEvent.getAllCopings() = _GetAllCopings;
}
