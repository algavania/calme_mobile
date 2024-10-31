
abstract class AuthRepository {
  Future<void> login(String email, String password);
  Future<void> register(String name, String email, String password);
  Future<void> forgotPassword(String email);
  Future<void> changePassword(String oldPassword, String newPassword);
  Future<void> logout();
}