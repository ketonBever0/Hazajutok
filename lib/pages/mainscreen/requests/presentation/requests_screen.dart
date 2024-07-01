import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/help_request/infrastructure/providers.dart';

class RequestsScreen extends ConsumerStatefulWidget {
  const RequestsScreen({super.key});

  @override
  ConsumerState<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends ConsumerState<RequestsScreen> {
  late Future<List<Map<String, dynamic>>> _futureRequests = fetchData();

  @override
  void initState() {
    super.initState();
    _futureRequests = fetchData();
  }

  Future<List<Map<String, dynamic>>> fetchData() async {
    try {
      return await ref.read(helpRequestProvider).getActiveRequests();
    } catch (e) {
      print(e);
      throw Exception("Error fetching data");
    }
  }

  Future<void> _refreshData() async {
    setState(() {
      _futureRequests = fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: FutureBuilder<List<Map<String, dynamic>>>(
        future: _futureRequests,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No active requests.'));
          } else {
            List<Map<String, dynamic>> data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final request = data[index];
                // final doc = FirebaseFirestore.instance.collection("users").doc(request['userId']).get() as Map<String, dynamic>;
                // final user = doc["fullname"];
                return ListTile(
                  title: Text("user" ?? ""),
                  subtitle: Text(request['details'] ?? '(No details)'),
                  onTap: () {},
                );
              },
            );
          }
        },
      ),
    );
  }
}
