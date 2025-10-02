import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_hu.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('hu')
  ];

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get language;

  /// No description provided for @mainTitle.
  ///
  /// In en, this message translates to:
  /// **'Car rescue'**
  String get mainTitle;

  /// No description provided for @mainHomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get mainHomeTitle;

  /// No description provided for @mainMapTitle.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get mainMapTitle;

  /// No description provided for @mainRequestsTitle.
  ///
  /// In en, this message translates to:
  /// **'Requests'**
  String get mainRequestsTitle;

  /// No description provided for @mainDrawerRegistration.
  ///
  /// In en, this message translates to:
  /// **'Registration'**
  String get mainDrawerRegistration;

  /// No description provided for @mainDrawerLogin.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get mainDrawerLogin;

  /// No description provided for @mainDrawerMyAccount.
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get mainDrawerMyAccount;

  /// No description provided for @mainDrawerLogOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get mainDrawerLogOut;

  /// No description provided for @authFullname.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get authFullname;

  /// No description provided for @authEmail.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get authEmail;

  /// No description provided for @authPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get authPassword;

  /// No description provided for @authPasswordAgain.
  ///
  /// In en, this message translates to:
  /// **'Password again'**
  String get authPasswordAgain;

  /// No description provided for @authMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get authMobileNumber;

  /// No description provided for @authMissingFullname.
  ///
  /// In en, this message translates to:
  /// **'Username is missing'**
  String get authMissingFullname;

  /// No description provided for @authMissingEmail.
  ///
  /// In en, this message translates to:
  /// **'E-mail is missing'**
  String get authMissingEmail;

  /// No description provided for @authMissingPassword.
  ///
  /// In en, this message translates to:
  /// **'Password is missing'**
  String get authMissingPassword;

  /// No description provided for @authMissingConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm password is missing'**
  String get authMissingConfirmPassword;

  /// No description provided for @authPasswordAndConfirmPasswordNotMatching.
  ///
  /// In en, this message translates to:
  /// **'Password and Confirm password must be equal'**
  String get authPasswordAndConfirmPasswordNotMatching;

  /// No description provided for @authMissingMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile number is missing'**
  String get authMissingMobileNumber;

  /// No description provided for @registrationSuccesful.
  ///
  /// In en, this message translates to:
  /// **'Registered as'**
  String get registrationSuccesful;

  /// No description provided for @registrationFailed.
  ///
  /// In en, this message translates to:
  /// **'Registration failed.'**
  String get registrationFailed;

  /// No description provided for @loginSuccess.
  ///
  /// In en, this message translates to:
  /// **'Welcome back!'**
  String get loginSuccess;

  /// No description provided for @loginErrorInvalidCredentials.
  ///
  /// In en, this message translates to:
  /// **'Invalid credentials.'**
  String get loginErrorInvalidCredentials;

  /// No description provided for @loginErrorNoUser.
  ///
  /// In en, this message translates to:
  /// **'Provided user not exists.'**
  String get loginErrorNoUser;

  /// No description provided for @loginErrorWrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Provided password is wrong.'**
  String get loginErrorWrongPassword;

  /// No description provided for @loginErrorUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown error.'**
  String get loginErrorUnknown;

  /// No description provided for @confirmLogOut.
  ///
  /// In en, this message translates to:
  /// **'Logout?'**
  String get confirmLogOut;

  /// No description provided for @mainRescueMeFullname.
  ///
  /// In en, this message translates to:
  /// **'Your Name'**
  String get mainRescueMeFullname;

  /// No description provided for @mainRescueMeFullnameError.
  ///
  /// In en, this message translates to:
  /// **'Name is missing'**
  String get mainRescueMeFullnameError;

  /// No description provided for @mainRescueMeMobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile number'**
  String get mainRescueMeMobile;

  /// No description provided for @mainRescueMeMobileError.
  ///
  /// In en, this message translates to:
  /// **'Mobile number is missing'**
  String get mainRescueMeMobileError;

  /// No description provided for @mainRescueMeType.
  ///
  /// In en, this message translates to:
  /// **''**
  String get mainRescueMeType;

  /// No description provided for @mainRescueMeTypeMotorCycle.
  ///
  /// In en, this message translates to:
  /// **'Motorcycle'**
  String get mainRescueMeTypeMotorCycle;

  /// No description provided for @mainRescueMeTypeCar.
  ///
  /// In en, this message translates to:
  /// **'Car'**
  String get mainRescueMeTypeCar;

  /// No description provided for @mainRescueMeTypeBus.
  ///
  /// In en, this message translates to:
  /// **'Bus'**
  String get mainRescueMeTypeBus;

  /// No description provided for @mainRescueMeTypeTruck.
  ///
  /// In en, this message translates to:
  /// **'Truck'**
  String get mainRescueMeTypeTruck;

  /// No description provided for @mainRescueMeTypeOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get mainRescueMeTypeOther;

  /// No description provided for @mainRescueMeDetails.
  ///
  /// In en, this message translates to:
  /// **'Please provide some details'**
  String get mainRescueMeDetails;

  /// No description provided for @mainRescueMeDetailsMissing.
  ///
  /// In en, this message translates to:
  /// **'Details not provided'**
  String get mainRescueMeDetailsMissing;

  /// No description provided for @mainRescueMeRequestHelp.
  ///
  /// In en, this message translates to:
  /// **'Send Request!'**
  String get mainRescueMeRequestHelp;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'hu'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'hu':
      return AppLocalizationsHu();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
