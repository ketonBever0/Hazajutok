import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'registration_form.freezed.dart';

part 'registration_form.g.dart';

@freezed
class RegistrationForm with _$RegistrationForm {
  const RegistrationForm._();

  const factory RegistrationForm({
    required String fullname,
    required String email,
    required String password,
    required String passwordAgain,
    required String mobile,
  }) = _RegistrationForm;

  factory RegistrationForm.fromJson(Map<String, Object> json) =>
      _$RegistrationFormFromJson(json);

  bool get fullnameError {
    return fullname.isEmpty;
  }

  bool get emailError {
    return email.isEmpty;
  }

  bool get passwordError {
    return password.isEmpty;
  }

  bool get confirmPasswordError {
    return passwordAgain.isEmpty;
  }

  bool get mobileError {
    return mobile.isEmpty;
  }

  bool get isValid {
    return fullname.isNotEmpty &&
        email.isNotEmpty &&
        password.isNotEmpty &&
        passwordAgain.isNotEmpty &&
        mobile.isNotEmpty;
  }
}
