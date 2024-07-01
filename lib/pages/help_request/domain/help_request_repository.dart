import 'package:hazajutok/pages/help_request/domain/help_request.dart';

abstract class HelpRequestRepository {
  Future<List<Map<String, dynamic>>> getActiveRequests();
}