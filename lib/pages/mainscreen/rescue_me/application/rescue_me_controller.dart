import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hazajutok/pages/auth/core/domain/auth_state.dart';
import 'package:hazajutok/pages/mainscreen/rescue_me/domain/rescue_me_form.dart';
import 'package:hazajutok/pages/mainscreen/rescue_me/infrastructure/providers.dart';
import 'package:latlong2/latlong.dart';

class RescueMeController extends Notifier<RescueMeForm> {
  @override
  RescueMeForm build() {
    return const RescueMeForm(
        where: LatLng(0, 0),
        isLoggedIn: false,
        fullname: "",
        fullnameInit: true,
        mobile: "",
        mobileInit: true,
        type: "",
        details: "",
        detailsInit: true);
  }

  void changePosition(LatLng? value) {
    state = state.copyWith(where: value);
  }

  void changeIsLoggedIn(bool value) {
    state = state.copyWith(isLoggedIn: value);
  }

  void changeFullname(String value) {
    state = state.copyWith(fullname: value, fullnameInit: false);
  }

  void changeMobile(String value) {
    state = state.copyWith(mobile: value, mobileInit: false);
  }

  void changeType(String? value) {
    state = state.copyWith(type: value ?? "");
  }

  void changeDetails(String value) {
    state = state.copyWith(details: value, detailsInit: false);
  }

  Future<void> requestHelp(AuthState authState) async {
    if (!state.isValid) throw Exception("Invalid form!");

    await ref
        .read(rescueMeRepositoryProvider)
        .requestHelp(rescueMeForm: state, authState: authState);
  }
}

final rescueMeControllerProvider =
    NotifierProvider<RescueMeController, RescueMeForm>(
        () => RescueMeController());
