import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part "help_request.freezed.dart";

@freezed
class HelpRequest with _$HelpRequest {
  const HelpRequest._();

  const factory HelpRequest(
      {required String uid,
      required Timestamp startDate,
      required Timestamp? endDate,
      required LatLng where,
      required bool? isStored,
      required String? model,
      required User user,
      required String fullname,
      required String? email,
      required String vehicleType,
      required String details,
      required String? licensePlate,
      required String? countryCode,
      required int? kmsFromDepartment,
      required int? kmsDelivered,
      required int? cost}) = $HelpRequest;

  factory HelpRequest.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return HelpRequest(
        uid: doc.id,
        startDate: data["startDate"],
        endDate: data["endDate"],
        where: data["where"],
        isStored: data["isStored"],
        model: data["model"],
        user: data["user"],
        fullname: data["fullname"],
        email: data["email"],
        vehicleType: data["vehicleType"],
        details: data["details"],
        licensePlate: data["licensePlate"],
        countryCode: data["countryCode"],
        kmsFromDepartment: data["kmsFromDepartment"],
        kmsDelivered: data["kmsDelivered"],
        cost: data["cost"]);
  }
}
