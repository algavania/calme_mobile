part of 'journal_bloc.dart';

@freezed
class JournalState with _$JournalState {
  const factory JournalState({
    required AsyncValue<List<JournalModel>> journals,
    required AsyncValue<List<JournalAnswerModel>> answers,
    required AsyncValue<List<QuestionModel>> questions,
    required AsyncValue<bool> saveAnswersStatus,
  }) = _JournalState;

  factory JournalState.initial() => const JournalState(
    journals: AsyncValue.loading(),
    answers: AsyncValue.loading(),
    questions: AsyncValue.loading(),
    saveAnswersStatus: AsyncValue.initial(),
  );
}
