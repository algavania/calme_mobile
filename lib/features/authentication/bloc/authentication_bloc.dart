import 'package:bloc/bloc.dart';
import 'package:calme_mobile/features/authentication/data/repository/auth_repository.dart';
import 'package:calme_mobile/util/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthRepository repository,
  }) : super(
    const AuthenticationState.initial(),
  ) {
    _repository = repository;

    on<_Login>(
      _onLoginEvent,
    );
    on<_Register>(
    _onRegisterEvent,
    );
    on<_Logout>(
      _onLogoutEvent,
    );
  }
  late final AuthRepository _repository;


  Future<void> _onLoginEvent(
      _Login event,
      Emitter<AuthenticationState> emit,
      ) async {
    emit(const AuthenticationState.loading());
    try {
      await _repository.login(event.email, event.password);
      emit(const AuthenticationState.authenticated());
    } catch (e, s) {
      logger.e(e.toString(), stackTrace: s);
      emit(AuthenticationState.error(e.toString()));
    }
  }

  Future<void> _onRegisterEvent(
      _Register event,
      Emitter<AuthenticationState> emit,
      ) async {
    emit(const AuthenticationState.loading());
    try {
      await _repository.register(event.name, event.email, event.password);
      emit(const AuthenticationState.registered());
    } catch (e, s) {
      logger.e(e.toString(), stackTrace: s);
      emit(AuthenticationState.error(e.toString()));
    }
  }

  Future<void> _onLogoutEvent(
      _Logout event,
      Emitter<AuthenticationState> emit,
      ) async {
    emit(const AuthenticationState.loading());
    try {
      await _repository.logout();
      emit(const AuthenticationState.unauthenticated());
    } catch (e, s) {
      logger.e(e.toString(), stackTrace: s);
      emit(AuthenticationState.error(e.toString()));
    }
  }


}
