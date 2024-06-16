import 'package:dartz/dartz.dart';
import 'package:hazajutok/pages/auth/user/domain/user.dart';

enum LoginError { INVALID_CREDENTIALS, NO_USER, WRONG_PASSWORD, UNKNOWN }

abstract class LoginRepository {
  Future<Either<User, LoginError>> login({
    required String email,
    required String password
  });
}