import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hazajutok/pages/auth/core/application/auth_controller.dart';
import 'package:hazajutok/pages/auth/core/domain/auth_state.dart';
import 'package:hazajutok/pages/mainscreen/rescue_me/presentation/components/minimmap.dart';
import 'package:latlong2/latlong.dart';

class RescueMe extends ConsumerWidget {

  final List<String> _selectableTypes = [
    "Motorcycle",
    "Car",
    "Bus",
    "Truck",
    "Other"
  ];
  String? _selectedType;



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            height: 200,
            child: Minimmap(),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      // enabled: authState is Unauthenticated,
                      label: Text("Your name")),
                  controller: TextEditingController(
                      text: authState is Authenticated
                          ? authState.user.fullname
                          : ""),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      // enabled: authState is Unauthenticated,
                      label: Text("Mobile number")),
                  controller: TextEditingController(
                      text: authState is Authenticated
                          ? authState.user.mobile
                          : "Your name"),
                ),
                SizedBox(
                  height: 20,
                ),
                DropdownButton(
                  value: _selectedType,
                  onChanged: (String? val) {},
                  hint: Text("Type"),
                  items: _selectableTypes
                      .map<DropdownMenuItem<String>>((String type) {
                    return DropdownMenuItem(
                      value: type,
                      child: Text(type),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  minLines: 1,
                  maxLines: 6,
                  decoration: InputDecoration(
                    label: Text("Please provide some details"),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[700]),
                  child: Text(
                    "Send Request!",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
