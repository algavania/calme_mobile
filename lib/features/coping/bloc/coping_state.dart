part of 'coping_bloc.dart';

@freezed
class CopingState with _$CopingState {
  const factory CopingState.initial() = _Initial;
  const factory CopingState.loading() = _Loading;
  const factory CopingState.error(String error) = _Error;
  const factory CopingState.loaded(List<CopingModel> list) = _Loaded;
}
