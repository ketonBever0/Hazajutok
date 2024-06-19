import 'package:freezed_annotation/freezed_annotation.dart';

part "rescue_me_form.freezed.dart";

@freezed
class RescueMeForm with _$RescueMeForm {
  const RescueMeForm._();

  const factory RescueMeForm(
      {
        required bool isLoggedIn,
        required String fullname,
        required String mobile,
        required String type,
        required String details
      }) = $RescueMeForm;


  bool get fullnameError => fullname.isEmpty;
  bool get mobileError => mobile.isEmpty;
  bool get typeError => type.isEmpty;



}
