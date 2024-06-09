import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirestoreService._privateConstructor();

  static final FirestoreService instance =
      FirestoreService._privateConstructor();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  FirebaseFirestore get db => _db;
}
