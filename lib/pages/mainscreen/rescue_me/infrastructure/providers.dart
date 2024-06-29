import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/auth/user/domain/rescue_me_repository.dart';
import 'package:hazajutok/pages/mainscreen/rescue_me/infrastructure/firebase_rescue_me_repository.dart';

final rescueMeRepositoryProvider = Provider<RescueMeRepository>((ref) => FirebaseRescueMeRepository());