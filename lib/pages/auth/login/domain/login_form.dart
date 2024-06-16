import 'package:freezed_annotation/freezed_annotation.dart';

part "login_form.freezed.dart";

@freezed
class LoginForm with _$LoginForm {
  const LoginForm._();
  const factory LoginForm({
    required String email,
    required bool emailInit,
    required String password,
    required bool passwordInit
}) = _LoginForm;

  bool get emailError => !emailInit && email.isEmpty;
  bool get passwordError => !passwordInit && password.isEmpty;

  bool get isValid => email.isNotEmpty && password.isNotEmpty;

}