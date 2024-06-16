

import 'package:hazajutok/pages/auth/user/domain/user.dart';

sealed class AuthState {
  const AuthState();
}

class Unknown extends AuthState {
  const Unknown();
}

class Unauthenticated extends AuthState{
  const Unauthenticated();
}

class Authenticated extends AuthState{
  const Authenticated({required this.user});
  final User user;
}