import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/auth/core/application/auth_controller.dart';
import 'package:hazajutok/pages/auth/login/domain/login_form.dart';
import 'package:hazajutok/pages/auth/login/domain/login_repository.dart';
import 'package:hazajutok/pages/auth/login/infrastructure/providers.dart';
import 'package:hazajutok/pages/auth/user/domain/user.dart' as core;

class LoginController extends Notifier<LoginForm> {
  @override
  LoginForm build() {
    return const LoginForm(
        email: "", emailInit: true, password: "", passwordInit: true);
  }

  void changeEmail(String email) {
    state = state.copyWith(email: email, emailInit: false);
  }

  void changePassword(String password) {
    state = state.copyWith(password: password, passwordInit: false);
  }

  Future<Either<core.User, LoginError>> login() async {
    if (!state.isValid) throw Exception("Invalid form!");
    final user = await ref
        .read(loginRepositoryProvider)
        .login(email: state.email, password: state.password);
    await ref.read(loginRepositoryProvider).login(email: state.email, password: state.password);
    return user;
  }

}

final loginControllerProvider =
NotifierProvider<LoginController, LoginForm>(() => LoginController());
