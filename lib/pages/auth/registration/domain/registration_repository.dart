import 'package:hazajutok/pages/auth/registration/domain/registration_form.dart';
import '../../user/domain/user.dart';

abstract class RegistrationRepository {
  Future<User> registration({required RegistrationForm registrationForm});
}