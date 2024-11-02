import 'package:bloc/bloc.dart';
import 'package:calme_mobile/core/async_value.dart';
import 'package:calme_mobile/data/models/coping/coping_model.dart';
import 'package:calme_mobile/features/coping/domain/usecases/get_copings.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coping_event.dart';
part 'coping_state.dart';
part 'coping_bloc.freezed.dart';

class CopingBloc extends Bloc<CopingEvent, CopingState> {
  CopingBloc() : super(
    CopingState.initial(),
  ) {
    on<_GetAllCopings>(
      _onGetAllCopingsEvent,
    );
  }

  final _getCopings = Injector.instance<GetCopings>();

  Future<void> _onGetAllCopingsEvent(
      _GetAllCopings event,
      Emitter<CopingState> emit,
      ) async {
    emit(state.copyWith(copings: const AsyncValue.loading()));
    final res = await _getCopings.call(const None());
    res.fold(
      (failure) {
        emit(state.copyWith(copings: AsyncValue.error(failure.message)));
      },
      (data) {
        emit(state.copyWith(copings: AsyncValue.data(data)));
      },
    );
  }
}
