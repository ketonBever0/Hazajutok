import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hazajutok/pages/help_request/domain/help_request.dart';
import 'package:hazajutok/pages/help_request/domain/help_request_repository.dart';

class FirebaseHelpRequestRepository extends HelpRequestRepository {
  @override
  Future<List<Map<String, dynamic>>> getActiveRequests() async {
    final QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection("helpRequests")
        .where("endDate", isEqualTo: null)
        .get();
    final List<QueryDocumentSnapshot> docs = querySnapshot.docs;
    final List<Map<String, dynamic>> items = docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    return items;
  }

}