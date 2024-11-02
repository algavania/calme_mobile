import 'package:bloc/bloc.dart';
import 'package:calme_mobile/core/async_value.dart';
import 'package:calme_mobile/data/models/journal/journal_model.dart';
import 'package:calme_mobile/data/models/journal/question_model.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:calme_mobile/features/journal/domain/usecases/get_journal_answers.dart';
import 'package:calme_mobile/features/journal/domain/usecases/get_journal_questions.dart';
import 'package:calme_mobile/features/journal/domain/usecases/get_journals.dart';
import 'package:calme_mobile/features/journal/domain/usecases/save_journal_answers.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'journal_event.dart';

part 'journal_state.dart';

part 'journal_bloc.freezed.dart';

class JournalBloc extends Bloc<JournalEvent, JournalState> {
  JournalBloc()
      : super(
          JournalState.initial(),
        ) {
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

  final _getAllJournals = Injector.instance<GetJournals>();
  final _getJournalQuestions = Injector.instance<GetJournalQuestions>();
  final _getJournalAnswers = Injector.instance<GetJournalAnswers>();
  final _saveAnswers = Injector.instance<SaveJournalAnswers>();

  Future<void> _onGetAllJournalsEvent(
    _GetAllJournals event,
    Emitter<JournalState> emit,
  ) async {
    emit(
      state.copyWith(
        journals: const AsyncValue.loading(),
      ),
    );
    final res = await _getAllJournals.call(const None());
    res.fold((failure) {
      emit(
        state.copyWith(
          journals: AsyncValue.error(failure.message),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(
          journals: AsyncValue.data(data),
        ),
      );
    });
  }

  Future<void> _onGetJournalQuestionsEvent(
    _GetJournalQuestions event,
    Emitter<JournalState> emit,
  ) async {
    emit(
      state.copyWith(
        questions: const AsyncValue.loading(),
      ),
    );
    final res = await _getJournalQuestions.call(event.journalId);
    final res2 = await _getJournalAnswers.call(event.journalId);
    final questions = <QuestionModel>[];
    Failure? error;
    res.fold(
      (failure) {
        error = failure;
      },
      questions.addAll,
    );
    res2.fold((failure) {
      emit(
        state.copyWith(
          answers: AsyncValue.error(failure.message),
          questions: error == null
              ? state.questions
              : AsyncValue.error(error!.message),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(
          answers: AsyncValue.data(data),
          questions: error != null
              ? AsyncValue.error(error!.message)
              : AsyncValue.data(questions),
        ),
      );
    });
  }

  Future<void> _onSaveAnswersEvent(
    _SaveAnswers event,
    Emitter<JournalState> emit,
  ) async {
    emit(
      state.copyWith(
        saveAnswersStatus: const AsyncValue.loading(),
      ),
    );
    final res = await _saveAnswers
        .call(SaveJournalAnswersParams(event.journalId, event.list));
    res.fold((failure) {
      emit(
        state.copyWith(
          saveAnswersStatus: AsyncValue.error(failure.message),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(
          saveAnswersStatus: const AsyncValue.data(true),
          answers: const AsyncValue.initial(),
          questions: const AsyncValue.initial(),
        ),
      );
      emit(
        state.copyWith(
          saveAnswersStatus: const AsyncValue.initial(),
        ),
      );
    });
  }
}
