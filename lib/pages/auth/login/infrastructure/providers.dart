import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/auth/login/domain/login_repository.dart';
import 'package:hazajutok/pages/auth/login/infrastructure/firebase_login_repository.dart';

final loginRepositoryProvider =
    Provider<LoginRepository>((ref) => FirebaseLoginRepository());
