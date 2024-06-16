import 'auth_state.dart';

abstract class AuthRepository {
  Stream<AuthState> watch();

  Future<void> createUser({required String email, required String password});

  Future<void> signInUser({required String email, required String password});

  Future<void> signOut();
}