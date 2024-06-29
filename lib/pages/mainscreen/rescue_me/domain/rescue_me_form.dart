import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part "rescue_me_form.freezed.dart";

@freezed
class RescueMeForm with _$RescueMeForm {
  const RescueMeForm._();

  const factory RescueMeForm(
      {required LatLng where,
      required bool isLoggedIn,
      required String fullname,
      required bool fullnameInit,
      required String mobile,
      required bool mobileInit,
      required String type,
      required String details,
      required bool detailsInit}) = $RescueMeForm;

  bool get positionError => where == null;

  bool get fullnameError => !fullnameInit && fullname.isEmpty;

  bool get mobileError => !mobileInit && mobile.isEmpty;

  bool get typeError => type.isEmpty;

  bool get detailsError => !detailsInit && details.isEmpty;

  bool get isValid =>
      fullname.isNotEmpty && mobile.isNotEmpty && type.isNotEmpty && details.isNotEmpty;
}
