import 'package:bloc/bloc.dart';
import 'package:calme_mobile/core/async_value.dart';
import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/features/meditation/domain/usecases/get_meditation_sessions.dart';
import 'package:calme_mobile/features/meditation/domain/usecases/get_meditations.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

part 'meditation_event.dart';

part 'meditation_state.dart';

part 'meditation_bloc.freezed.dart';

class MeditationBloc extends Bloc<MeditationEvent, MeditationState> {
  MeditationBloc()
      : super(
          MeditationState.initial(),
        ) {
    on<_GetAllMeditations>(
      _onGetAllMeditationsEvent,
    );
  }

  final _getMeditations = Injector.instance<GetMeditations>();
  final _getMeditationSessions = Injector.instance<GetMeditationSessions>();

  Future<void> _onGetAllMeditationsEvent(
    _GetAllMeditations event,
    Emitter<MeditationState> emit,
  ) async {
    emit(
      state.copyWith(meditations: const AsyncValue.loading()),
    );

    final currentMeditations = state.meditations
        .maybeMap(orElse: () => <MeditationModel>[], data: (s) => s.data);
    if (currentMeditations.isNotEmpty) {
      for (final meditation in currentMeditations) {
        for (final session in meditation.sessions) {
          await session.player?.dispose();
        }
      }
    }

    final res = await _getMeditations.call(const None());
    await res.fold((failure) {
      emit(
        state.copyWith(
          meditations: AsyncValue.error(failure.message),
        ),
      );
    }, (data) async {
      final meditations = data;
      var i = 0;
      for (final e in meditations) {
        final result = await _getMeditationSessions.call(e.id!);
        await result.fold((_) {}, (s) async {
          final sessions = s;
          var j = 0;
          for (var session in sessions) {
            final player = AudioPlayer();
            await player
                .setAudioSource(AudioSource.uri(Uri.parse(session.audioUrl)));
            session = session.copyWith(
              player: player,
            );
            sessions[j] = session;
            j++;
          }
          meditations[i] = e.copyWith(sessions: sessions);
        });
        i++;
      }
      emit(
        state.copyWith(
          meditations: AsyncValue.data(meditations),
        ),
      );
    });
  }
}
