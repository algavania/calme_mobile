import 'package:bloc/bloc.dart';
import 'package:calme_mobile/core/async_value.dart';
import 'package:calme_mobile/data/models/user/user_model.dart';
import 'package:calme_mobile/database/db_helper.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/get_user_by_id.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/login.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/logout.dart';
import 'package:calme_mobile/features/authentication/domain/usecases/register.dart';
import 'package:calme_mobile/injector/injector.dart';
import 'package:calme_mobile/util/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationState.initial()) {
    on<_Login>(_onLoginEvent);
    on<_Logout>(_onLogoutEvent);
    on<_Register>(_onRegisterEvent);
    on<_CheckAuthStatus>(_onCheckAuthStatusEvent);
  }

  final _login = Injector.instance<Login>();
  final _logout = Injector.instance<Logout>();
  final _register = Injector.instance<Register>();
  final _getUserById = Injector.instance<GetUserById>();

  Future<void> _onCheckAuthStatusEvent(
      _CheckAuthStatus event,
      Emitter<AuthenticationState> emit,
      ) async {
    emit(
      state.copyWith(
        isAuthenticated: const AsyncValue<bool>.loading(),
      ),
    );
    final uid = DbHelper.auth.currentUser?.uid;
    if (uid == null) {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(
        state.copyWith(
          isAuthenticated: const AsyncValue<bool>.data(false),
        ),
      );
    } else {
      final res = await _getUserById.call(uid);
      res.fold((failure) {
        emit(
          state.copyWith(
            isAuthenticated: AsyncValue<bool>.error(failure.message),
          ),
        );
      }, (data) {
        emit(
          state.copyWith(
            isAuthenticated: const AsyncValue<bool>.data(true),
            user: AsyncValue.data(data),
          ),
        );
      });
    }
  }

  Future<void> _onLoginEvent(
    _Login event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(
      state.copyWith(
        isAuthenticated: const AsyncValue<bool>.loading(),
      ),
    );
    final res = await _login
        .call(LoginParams(email: event.email, password: event.password));
    res.fold((failure) {
      emit(
        state.copyWith(
          isAuthenticated: AsyncValue<bool>.error(failure.message),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(
          isAuthenticated: const AsyncValue.data(true),
          user: AsyncValue.data(data),
        ),
      );
    });
  }

  Future<void> _onRegisterEvent(
    _Register event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(
      state.copyWith(
        registerStatus: const AsyncValue<bool>.loading(),
      ),
    );
    final res = await _register.call(
      RegisterParams(
        name: event.name,
        email: event.email,
        password: event.password,
      ),
    );
    res.fold((failure) {
      emit(
        state.copyWith(
          registerStatus: AsyncValue<bool>.error(failure.message),
        ),
      );
    }, (data) {
      emit(
        state.copyWith(
          registerStatus: const AsyncValue.data(true),
        ),
      );
      emit(
        state.copyWith(
          registerStatus: const AsyncValue<bool>.initial(),
        ),
      );
    });
  }

  Future<void> _onLogoutEvent(
    _Logout event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(
      state.copyWith(
        isAuthenticated: const AsyncValue<bool>.loading(),
      ),
    );
    final res = await _logout.call(const None());
    res.fold((failure) {
      logger.e('Logout failed: ${failure.message}');
    }, (data) {
      emit(
        state.copyWith(
          isAuthenticated: const AsyncValue.data(false),
          user: const AsyncValue<UserModel>.initial(),
        ),
      );
    });
  }
}
