import 'package:bloc/bloc.dart';
import 'package:calme_mobile/data/models/journal/journal_model.dart';
import 'package:calme_mobile/data/models/journal/question_model.dart';
import 'package:calme_mobile/features/journal/data/repository/journal_repository.dart';
import 'package:calme_mobile/util/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'journal_event.dart';
part 'journal_state.dart';
part 'journal_bloc.freezed.dart';

class JournalBloc extends Bloc<JournalEvent, JournalState> {
  JournalBloc({
    required JournalRepository repository,
  }) : super(
    const JournalState.initial(),
  ) {
    _repository = repository;

    on<_GetAllJournals>(
      _onGetAllJournalsEvent,
    );
    on<_GetJournalQuestions>(
      _onGetJournalQuestionsEvent,
    );
    on<_SaveAnswers>(
      _onSaveAnswersEvent,
    );
  }
  late final JournalRepository _repository;

  Future<void> _onGetAllJournalsEvent(
      _GetAllJournals event,
      Emitter<JournalState> emit,
      ) async {
    emit(const JournalState.loading());
    try {
      final list = await _repository.getAllJournals();
      emit(JournalState.loaded(list));
    } catch (e, s) {
      logger.e(e.toString(), stackTrace: s);
      emit(JournalState.error(e.toString()));
    }
  }

  Future<void> _onGetJournalQuestionsEvent(
      _GetJournalQuestions event,
      Emitter<JournalState> emit,
      ) async {
    emit(const JournalState.loading());
    try {
      final list = await _repository.getJournalQuestions(event.journalId);
      final answers = await _repository.getJournalAnswers(event.journalId);

      emit(JournalState.questionsLoaded(list, answers));
    } catch (e, s) {
      logger.e(e.toString(), stackTrace: s);
      emit(JournalState.error(e.toString()));
    }
  }

  Future<void> _onSaveAnswersEvent(
      _SaveAnswers event,
      Emitter<JournalState> emit,
      ) async {
    emit(const JournalState.loading());
    try {
      await _repository.saveJournalAnswers(event.journalId, event.list);
      emit(const JournalState.success());
    } catch (e, s) {
      logger.e(e.toString(), stackTrace: s);
      emit(JournalState.error(e.toString()));
    }
  }
}
