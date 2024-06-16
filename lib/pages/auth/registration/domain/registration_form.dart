import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'registration_form.freezed.dart';

part 'registration_form.g.dart';

enum ConfirmPasswordError { MISSING, NOT_MATCHING }

@freezed
class RegistrationForm with _$RegistrationForm {
  const RegistrationForm._();

  const factory RegistrationForm({
    required String fullname,
    required bool fullnameInit,
    required String email,
    required bool emailInit,
    required String password,
    required bool passwordInit,
    required String passwordAgain,
    required bool passwordAgainInit,
    required String mobile,
    required bool mobileInit,
  }) = _RegistrationForm;

  factory RegistrationForm.fromJson(Map<String, Object> json) =>
      _$RegistrationFormFromJson(json);

  bool get fullnameError => !fullnameInit && fullname.isEmpty;

  bool get emailError => !emailInit && email.isEmpty;

  bool get passwordError => !passwordInit && password.isEmpty;

  ConfirmPasswordError? get confirmPasswordError {
    if (!passwordAgainInit) {
      if (passwordAgain.isEmpty) return ConfirmPasswordError.MISSING;
      if (password != passwordAgain) return ConfirmPasswordError.NOT_MATCHING;
    }
    return null;
  }

  bool get mobileError => !mobileInit && mobile.isEmpty;

  bool get isValid =>
      fullname.isNotEmpty &&
      email.isNotEmpty &&
      password.isNotEmpty &&
      passwordAgain.isNotEmpty &&
      password == passwordAgain &&
      mobile.isNotEmpty;
}
