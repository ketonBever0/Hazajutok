import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hazajutok/pages/auth/registration/domain/registration_form.dart';
import 'package:hazajutok/pages/auth/registration/domain/registration_repository.dart';
import '../../user/domain/user.dart' as core;

class FirebaseRegistrationRepository extends RegistrationRepository {
  @override
  Future<core.User> registration(
      {required RegistrationForm registrationForm}) async {
    final credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: registrationForm.email, password: registrationForm.password);
    final user = credential.user;
    final now = Timestamp.now();
    if (user != null) {
      await FirebaseFirestore.instance.collection("users").doc(user.uid).set({
        "fullname": registrationForm.fullname,
        "email": registrationForm.email,
        "mobile": registrationForm.mobile,
        "role": "user",
        "registeredAt": now,
        "lastLogin": now,
      });
    }

    return core.User(
        uid: credential.user!.uid,
        fullname: registrationForm.fullname,
        email: registrationForm.email,
        mobile: registrationForm.mobile,
        lastLogin: now,
        registeredAt: now);
  }
}
