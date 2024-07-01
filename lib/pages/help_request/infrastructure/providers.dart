import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/help_request/domain/help_request_repository.dart';
import 'package:hazajutok/pages/help_request/infrastructure/firebase_help_request_repository.dart';

final helpRequestProvider =
    Provider<HelpRequestRepository>((ref) => FirebaseHelpRequestRepository());
