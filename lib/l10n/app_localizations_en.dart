// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get language => 'English';

  @override
  String get mainTitle => 'Car rescue';

  @override
  String get mainHomeTitle => 'Home';

  @override
  String get mainMapTitle => 'Map';

  @override
  String get mainRequestsTitle => 'Requests';

  @override
  String get mainDrawerRegistration => 'Registration';

  @override
  String get mainDrawerLogin => 'Login';

  @override
  String get mainDrawerMyAccount => 'My Account';

  @override
  String get mainDrawerLogOut => 'Log out';

  @override
  String get authFullname => 'Username';

  @override
  String get authEmail => 'E-mail';

  @override
  String get authPassword => 'Password';

  @override
  String get authPasswordAgain => 'Password again';

  @override
  String get authMobileNumber => 'Mobile';

  @override
  String get authMissingFullname => 'Username is missing';

  @override
  String get authMissingEmail => 'E-mail is missing';

  @override
  String get authMissingPassword => 'Password is missing';

  @override
  String get authMissingConfirmPassword => 'Confirm password is missing';

  @override
  String get authPasswordAndConfirmPasswordNotMatching =>
      'Password and Confirm password must be equal';

  @override
  String get authMissingMobileNumber => 'Mobile number is missing';

  @override
  String get registrationSuccesful => 'Registered as';

  @override
  String get registrationFailed => 'Registration failed.';

  @override
  String get loginSuccess => 'Welcome back!';

  @override
  String get loginErrorInvalidCredentials => 'Invalid credentials.';

  @override
  String get loginErrorNoUser => 'Provided user not exists.';

  @override
  String get loginErrorWrongPassword => 'Provided password is wrong.';

  @override
  String get loginErrorUnknown => 'Unknown error.';

  @override
  String get confirmLogOut => 'Logout?';

  @override
  String get mainRescueMeFullname => 'Your Name';

  @override
  String get mainRescueMeFullnameError => 'Name is missing';

  @override
  String get mainRescueMeMobile => 'Mobile number';

  @override
  String get mainRescueMeMobileError => 'Mobile number is missing';

  @override
  String get mainRescueMeType => '';

  @override
  String get mainRescueMeTypeMotorCycle => 'Motorcycle';

  @override
  String get mainRescueMeTypeCar => 'Car';

  @override
  String get mainRescueMeTypeBus => 'Bus';

  @override
  String get mainRescueMeTypeTruck => 'Truck';

  @override
  String get mainRescueMeTypeOther => 'Other';

  @override
  String get mainRescueMeDetails => 'Please provide some details';

  @override
  String get mainRescueMeDetailsMissing => 'Details not provided';

  @override
  String get mainRescueMeRequestHelp => 'Send Request!';
}
