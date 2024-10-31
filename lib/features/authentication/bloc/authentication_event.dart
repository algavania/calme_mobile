part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.started() = _Started;
  const factory AuthenticationEvent.login(String email, String password) = _Login;
  const factory AuthenticationEvent.register(String name, String email, String password) = _Register;
  const factory AuthenticationEvent.logout() = _Logout;
}
