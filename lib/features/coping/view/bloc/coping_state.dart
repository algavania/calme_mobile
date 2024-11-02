part of 'coping_bloc.dart';

@freezed
class CopingState with _$CopingState {
  const factory CopingState({
    required AsyncValue<List<CopingModel>> copings,
  }) = _CopingState;

  factory CopingState.initial() => const CopingState(
    copings: AsyncValue.loading(),
  );
}
