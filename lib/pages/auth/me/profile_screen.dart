import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/auth/core/application/auth_controller.dart';
import 'package:hazajutok/pages/auth/core/domain/auth_state.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);
    Timestamp? registeredAt;
    if(authState is Authenticated) registeredAt = authState.user.registeredAt;

    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: authState is Authenticated
            ? Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Full Name: ${authState.user.fullname}',
                        style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    Text('Email: ${authState.user.email}',
                        style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    Text('Mobile: ${authState.user.mobile}',
                        style: TextStyle(fontSize: 18)),
                    SizedBox(height: 8),
                    SizedBox(height: 8),
                    Text('Registered At: ${registeredAt?.toDate().year}. ${registeredAt?.toDate().month}. ${registeredAt?.toDate().day}',
                        style: TextStyle(fontSize: 18)),
                  ],
                ),
              )
            : Center(child: Text('No user is logged in')));
  }
}
