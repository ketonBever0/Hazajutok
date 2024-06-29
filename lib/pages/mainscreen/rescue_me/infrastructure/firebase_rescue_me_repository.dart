import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hazajutok/pages/auth/core/domain/auth_state.dart';
import 'package:hazajutok/pages/auth/user/domain/rescue_me_repository.dart';
import 'package:hazajutok/pages/help_request/domain/help_request.dart';
import 'package:hazajutok/pages/mainscreen/rescue_me/domain/rescue_me_form.dart';
import 'package:latlong2/latlong.dart';

class FirebaseRescueMeRepository extends RescueMeRepository {
  @override
  Future<HelpRequest> requestHelp(
      {required RescueMeForm rescueMeForm,
      required AuthState authState}) async {
    final docRef =
        await FirebaseFirestore.instance.collection("helpRequests").add({
      "startDate": Timestamp.now(),
      "endDate": null,
      "where": {
        "latitude": rescueMeForm.where!.latitude,
        "longitude": rescueMeForm.where!.longitude
      },
      "isStored": null,
      "model": null,
      "userId": authState is Authenticated ? authState.user.uid : null,
      "fullname": rescueMeForm.fullname,
      "email": authState is Authenticated ? authState.user.email : null,
      "vehicleType": rescueMeForm.type,
      "details": rescueMeForm.details,
      "licensePlate": null,
      "countryCode": null,
      "kmsFromDepartment": null,
      "kmsDelivered": null,
      "cost": null
    });
    final docSnapshot = await docRef.get();
    Map data = docSnapshot.data() as Map<String, dynamic>;
    LatLng where;
    where = LatLng(data["where"]["latitude"], data["where"]["longitude"]);
    return HelpRequest(
        uid: docSnapshot.id,
        startDate: data["startDate"],
        endDate: data["endDate"],
        where: where,
        isStored: data["isStored"],
        model: data["model"],
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
