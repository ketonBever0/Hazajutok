import 'package:hazajutok/pages/auth/core/domain/auth_state.dart';
import 'package:hazajutok/pages/help_request/domain/help_request.dart';
import 'package:hazajutok/pages/mainscreen/rescue_me/domain/rescue_me_form.dart';

abstract class RescueMeRepository {
  Future<HelpRequest> requestHelp(
      {required RescueMeForm rescueMeForm, required AuthState authState});
}
