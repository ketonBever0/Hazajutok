import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/auth/registration/domain/registration_form.dart';
import 'package:hazajutok/pages/auth/registration/infrastructure/providers.dart';

import '../../user/domain/user.dart';

class RegistrationController extends Notifier<RegistrationForm> {
  @override
  RegistrationForm build() {
    return RegistrationForm(
        fullname: "",
        email: "",
        password: "",
        passwordAgain: "",
        mobile: "",
        fullnameInit: true,
        emailInit: true,
        passwordInit: true,
        passwordAgainInit: true,
        mobileInit: true);
  }

  void changeFullname(String value) {
    state = state.copyWith(fullname: value, fullnameInit: false);
  }

  void changeEmail(String value) {
    state = state.copyWith(email: value, emailInit: false);
  }

  void changePassword(String value) {
    state = state.copyWith(password: value, passwordInit: false);
  }

  void changePasswordAgain(String value) {
    state = state.copyWith(passwordAgain: value, passwordAgainInit: false);
  }

  void changeMobile(String value) {
    state = state.copyWith(mobile: value, mobileInit: false);
  }

  Future<User> registration() async {
    if (!state.isValid) throw Exception("Invalid form!");

    final user = await ref
        .read(registrationRepositoryProvider)
        .registration(registrationForm: state);

    return user;
  }
}

final registrationControllerProvider =
    NotifierProvider<RegistrationController, RegistrationForm>(
  () => RegistrationController(),
);
