import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hazajutok/pages/auth/core/domain/auth_repository.dart';
import 'package:hazajutok/pages/auth/core/domain/auth_state.dart';
import 'package:hazajutok/pages/auth/user/domain/user.dart' as core;

class FirebaseAuthRepository extends AuthRepository {
  @override
  Future<void> createUser(
      {required String email, required String password}) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signInUser(
      {required String email, required String password}) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signOut() {
    return FirebaseAuth.instance.signOut();
  }

  @override
  Stream<AuthState> watch() async* {
    await for (User? user in FirebaseAuth.instance.userChanges()) {
      if (user == null) {
        yield const Unauthenticated();
      } else {
        final docUser = await FirebaseFirestore.instance
            .collection("users")
            .doc(user.uid)
            .get();

        final data = docUser.data()!;

        yield Authenticated(
            user: core.User(
                uid: user.uid,
                fullname: data["fullname"] ?? "?",
                email: user.email ?? "?",
                mobile: data["mobile"] ?? "?",
                lastLogin: data["lastLogin"],
                registeredAt: data["registeredAt"]));
      }
    }
  }
}
