part of 'journal_bloc.dart';

@freezed
class JournalState with _$JournalState {
  const factory JournalState.initial() = _Initial;
  const factory JournalState.loading() = _Loading;
  const factory JournalState.error(String error) = _Error;
  const factory JournalState.loaded(List<JournalModel> list) = _Loaded;
  const factory JournalState.success() = _Success;
  const factory JournalState.answersLoaded(List<JournalAnswerModel> list) = _AnswersLoaded;
  const factory JournalState.questionsLoaded(List<QuestionModel> list, List<JournalAnswerModel> answers) = _QuestionsLoaded;
}
