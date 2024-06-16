import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/auth/core/domain/auth_state.dart';
import 'package:hazajutok/pages/auth/core/infrastructure/providers.dart';

class AuthController extends Notifier<AuthState> {
  StreamSubscription<AuthState>? _authStateChangeSubscriptions;

  @override
  AuthState build() {
    ref.onDispose(() {
      _authStateChangeSubscriptions?.cancel();
    });
    _authStateChangeSubscriptions?.cancel();
    _authStateChangeSubscriptions =
        ref.watch(authRepositoryProvider).watch().listen((authState) {
      state = authState;
    });
    return const Unknown();
  }

  Future<void> signInUser(
      {required String email, required String password}) async {
    await ref
        .read(authRepositoryProvider)
        .signInUser(email: email, password: password);
  }

  Future<void> signOut() async {
    await ref.read(authRepositoryProvider).signOut();
  }
}

final authControllerProvider =
    NotifierProvider<AuthController, AuthState>(() => AuthController());
