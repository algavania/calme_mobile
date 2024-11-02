part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required AsyncValue<UserModel> user,
    required AsyncValue<bool> isAuthenticated,
    required AsyncValue<bool> registerStatus,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => const AuthenticationState(
    user: AsyncValue.initial(),
    isAuthenticated: AsyncValue.initial(),
    registerStatus: AsyncValue.initial(),
  );
}
