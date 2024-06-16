import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hazajutok/pages/auth/login/domain/login_repository.dart';
import 'package:hazajutok/pages/auth/user/domain/user.dart' as core;

class FirebaseLoginRepository extends LoginRepository {
  @override
  Future<Either<core.User, LoginError>> login(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final user = credential.user!;
      final fs = FirebaseFirestore.instance;
      final docUser = await fs.collection("users").doc(user.uid).get();

      return Left(core.User.fromFirestore(docUser));
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-credential") return const Right(LoginError.INVALID_CREDENTIALS);
      // if (e.code == 'user-not-found') {
      //   return const Right(LoginError.NO_USER);
      // } else if (e.code == 'wrong-password') {
      //   return const Right(LoginError.WRONG_PASSWORD);
      // }
    }
    return const Right(LoginError.UNKNOWN);
  }
}
