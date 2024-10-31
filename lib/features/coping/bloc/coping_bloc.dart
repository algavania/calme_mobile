import 'package:bloc/bloc.dart';
import 'package:calme_mobile/data/models/coping/coping_model.dart';
import 'package:calme_mobile/features/coping/data/coping_repository.dart';
import 'package:calme_mobile/util/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coping_event.dart';
part 'coping_state.dart';
part 'coping_bloc.freezed.dart';

class CopingBloc extends Bloc<CopingEvent, CopingState> {
  CopingBloc({
    required CopingRepository repository,
  }) : super(
    const CopingState.initial(),
  ) {
    _repository = repository;

    on<_GetAllCopings>(
      _onGetAllCopingsEvent,
    );
  }
  late final CopingRepository _repository;

  Future<void> _onGetAllCopingsEvent(
      _GetAllCopings event,
      Emitter<CopingState> emit,
      ) async {
    emit(const CopingState.loading());
    try {
      final list = await _repository.getCopings();
      emit(CopingState.loaded(list));
    } catch (e, s) {
      logger.e(e.toString(), stackTrace: s);
      emit(CopingState.error(e.toString()));
    }
  }
}
