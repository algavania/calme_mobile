import 'package:calme_mobile/data/models/user/user_model.dart';
import 'package:calme_mobile/database/db_helper.dart';
import 'package:calme_mobile/error/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);

  Future<UserModel> getUserById(String uid);

  Future<void> register(String name, String email, String password);

  Future<void> forgotPassword(String email);

  Future<void> changePassword(String oldPassword, String newPassword);

  Future<void> logout();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final auth = DbHelper.auth;

  @override
  Future<UserModel> getUserById(String uid) async {
    final snapshot =
        await DbHelper.db.collection(DbHelper.users).doc(uid).get();
    final data = UserModel.fromJson(snapshot.data()!).copyWith(id: snapshot.id);
    return data;
  }

  @override
  Future<UserModel> login(String email, String password) async {
    try {
      final res = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = res.user!;
      return await getUserById(user.uid);
    } on FirebaseAuthException catch (e) {
      throw Failure(_handleAuthErrorCodes(e.code));
    }
  }

  @override
  Future<void> register(String name, String email, String password) async {
    try {
      final res = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await res.user?.updateDisplayName(name);
      final model =
          UserModel(name: name, email: email, createdAt: DateTime.now());
      await DbHelper.db
          .collection(DbHelper.users)
          .doc(res.user?.uid)
          .set(model.toJson());
      await logout();
    } on FirebaseAuthException catch (e) {
      throw Failure(_handleAuthErrorCodes(e.code));
    }
  }

  String _handleAuthErrorCodes(String code) {
    switch (code) {
      case 'ERROR_EMAIL_ALREADY_IN_USE':
      case 'account-exists-with-different-credential':
      case 'email-already-in-use':
        return 'Email sudah dipakai';
      case 'ERROR_WRONG_PASSWORD':
      case 'wrong-password':
        return 'Password salah';
      case 'ERROR_USER_NOT_FOUND':
      case 'user-not-found':
        return 'User tidak ditemukan';
      case 'ERROR_USER_DISABLED':
      case 'user-disabled':
        return 'User tidak tersedia';
      case 'ERROR_TOO_MANY_REQUESTS':
      case 'operation-not-allowed':
        return 'Terlalu banyak percobaan yang dilakukan, coba lagi nanti';
      case 'ERROR_OPERATION_NOT_ALLOWED':
        return 'Terjadi kesalahan, coba lagi nanti';
      case 'ERROR_INVALID_EMAIL':
      case 'invalid-email':
        return 'Email tidak valid';
      default:
        return 'Login gagal. Silakan coba lagi';
    }
  }

  @override
  Future<void> logout() async {
    await auth.signOut();
  }

  @override
  Future<void> changePassword(String oldPassword, String newPassword) async {
    await login(auth.currentUser?.email ?? '', oldPassword);
    await auth.currentUser?.updatePassword(newPassword);
  }

  @override
  Future<void> forgotPassword(String email) async {
    await auth.sendPasswordResetEmail(email: email);
  }
}
