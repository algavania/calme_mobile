import 'package:bloc/bloc.dart';
import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/features/meditation/data/repository/meditation_repository.dart';
import 'package:calme_mobile/util/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meditation_event.dart';
part 'meditation_state.dart';
part 'meditation_bloc.freezed.dart';

class MeditationBloc extends Bloc<MeditationEvent, MeditationState> {
  MeditationBloc({
    required MeditationRepository repository,
  }) : super(
    const MeditationState.initial(),
  ) {
    _repository = repository;

    on<_GetAllMeditations>(
      _onGetAllMeditationsEvent,
    );
  }
  late final MeditationRepository _repository;

  Future<void> _onGetAllMeditationsEvent(
      _GetAllMeditations event,
      Emitter<MeditationState> emit,
      ) async {
    emit(const MeditationState.loading());
    try {
      final list = await _repository.getMeditations();
      var i = 0;
      for (final data in list) {
        final sessions = await _repository.getMeditationSessions(data.id!);
        list[i] = list[i].copyWith(sessions: sessions);
        i++;
      }
      emit(MeditationState.loaded(list));
    } catch (e, s) {
      logger.e(e.toString(), stackTrace: s);
      emit(MeditationState.error(e.toString()));
    }
  }
}