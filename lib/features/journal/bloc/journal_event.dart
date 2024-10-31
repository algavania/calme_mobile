part of 'journal_bloc.dart';

@freezed
class JournalEvent with _$JournalEvent {
  const factory JournalEvent.started() = _Started;
  const factory JournalEvent.getAllJournals() = _GetAllJournals;
  const factory JournalEvent.getJournalQuestions(String journalId) = _GetJournalQuestions;
  const factory JournalEvent.saveAnswers(String journalId, List<JournalAnswerModel> list) = _SaveAnswers;
}
