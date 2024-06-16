import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/auth/core/domain/auth_repository.dart';
import 'package:hazajutok/pages/auth/core/infrastructure/firebase_auth_repository.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => FirebaseAuthRepository());