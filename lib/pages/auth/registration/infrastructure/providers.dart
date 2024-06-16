import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/auth/registration/domain/registration_repository.dart';
import 'package:hazajutok/pages/auth/registration/infrastructure/firebase_registration_repository.dart';

final registrationRepositoryProvider =
    Provider<RegistrationRepository>((ref) => FirebaseRegistrationRepository());
