import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User(
      {required String uid,
      required String fullname,
      required String email,
      required String mobile,
      required Timestamp? lastLogin,
      required Timestamp? registeredAt}) = _User;

  factory User.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return User(
        uid: doc.id,
        fullname: data["fullname"],
        email: data["email"],
        mobile: data["mobile"],
        lastLogin: data["lastLogin"],
        registeredAt: data["registeredAt"]);
  }
}
