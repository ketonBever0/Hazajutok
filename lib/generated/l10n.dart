// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Car rescue`
  String get mainTitle {
    return Intl.message(
      'Car rescue',
      name: 'mainTitle',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get mainHomeTitle {
    return Intl.message(
      'Home',
      name: 'mainHomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Map`
  String get mainMapTitle {
    return Intl.message(
      'Map',
      name: 'mainMapTitle',
      desc: '',
      args: [],
    );
  }

  /// `Requests`
  String get mainRequestsTitle {
    return Intl.message(
      'Requests',
      name: 'mainRequestsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get mainDrawerRegistration {
    return Intl.message(
      'Registration',
      name: 'mainDrawerRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get mainDrawerLogin {
    return Intl.message(
      'Login',
      name: 'mainDrawerLogin',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get mainDrawerMyAccount {
    return Intl.message(
      'My Account',
      name: 'mainDrawerMyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get mainDrawerLogOut {
    return Intl.message(
      'Log out',
      name: 'mainDrawerLogOut',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get authFullname {
    return Intl.message(
      'Username',
      name: 'authFullname',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get authEmail {
    return Intl.message(
      'E-mail',
      name: 'authEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get authPassword {
    return Intl.message(
      'Password',
      name: 'authPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password again`
  String get authPasswordAgain {
    return Intl.message(
      'Password again',
      name: 'authPasswordAgain',
      desc: '',
      args: [],
    );
  }

  /// `Mobile`
  String get authMobileNumber {
    return Intl.message(
      'Mobile',
      name: 'authMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Username is missing`
  String get authMissingFullname {
    return Intl.message(
      'Username is missing',
      name: 'authMissingFullname',
      desc: '',
      args: [],
    );
  }

  /// `E-mail is missing`
  String get authMissingEmail {
    return Intl.message(
      'E-mail is missing',
      name: 'authMissingEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password is missing`
  String get authMissingPassword {
    return Intl.message(
      'Password is missing',
      name: 'authMissingPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password is missing`
  String get authMissingConfirmPassword {
    return Intl.message(
      'Confirm password is missing',
      name: 'authMissingConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password and Confirm password must be equal`
  String get authPasswordAndConfirmPasswordNotMatching {
    return Intl.message(
      'Password and Confirm password must be equal',
      name: 'authPasswordAndConfirmPasswordNotMatching',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number is missing`
  String get authMissingMobileNumber {
    return Intl.message(
      'Mobile number is missing',
      name: 'authMissingMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Registered as`
  String get registrationSuccesful {
    return Intl.message(
      'Registered as',
      name: 'registrationSuccesful',
      desc: '',
      args: [],
    );
  }

  /// `Registration failed.`
  String get registrationFailed {
    return Intl.message(
      'Registration failed.',
      name: 'registrationFailed',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back!`
  String get loginSuccess {
    return Intl.message(
      'Welcome back!',
      name: 'loginSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials.`
  String get loginErrorInvalidCredentials {
    return Intl.message(
      'Invalid credentials.',
      name: 'loginErrorInvalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Provided user not exists.`
  String get loginErrorNoUser {
    return Intl.message(
      'Provided user not exists.',
      name: 'loginErrorNoUser',
      desc: '',
      args: [],
    );
  }

  /// `Provided password is wrong.`
  String get loginErrorWrongPassword {
    return Intl.message(
      'Provided password is wrong.',
      name: 'loginErrorWrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error.`
  String get loginErrorUnknown {
    return Intl.message(
      'Unknown error.',
      name: 'loginErrorUnknown',
      desc: '',
      args: [],
    );
  }

  /// `Logout?`
  String get confirmLogOut {
    return Intl.message(
      'Logout?',
      name: 'confirmLogOut',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get mainRescueMeFullname {
    return Intl.message(
      'Your Name',
      name: 'mainRescueMeFullname',
      desc: '',
      args: [],
    );
  }

  /// `Name is missing`
  String get mainRescueMeFullnameError {
    return Intl.message(
      'Name is missing',
      name: 'mainRescueMeFullnameError',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number`
  String get mainRescueMeMobile {
    return Intl.message(
      'Mobile number',
      name: 'mainRescueMeMobile',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number is missing`
  String get mainRescueMeMobileError {
    return Intl.message(
      'Mobile number is missing',
      name: 'mainRescueMeMobileError',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get mainRescueMeType {
    return Intl.message(
      '',
      name: 'mainRescueMeType',
      desc: '',
      args: [],
    );
  }

  /// `Motorcycle`
  String get mainRescueMeTypeMotorCycle {
    return Intl.message(
      'Motorcycle',
      name: 'mainRescueMeTypeMotorCycle',
      desc: '',
      args: [],
    );
  }

  /// `Car`
  String get mainRescueMeTypeCar {
    return Intl.message(
      'Car',
      name: 'mainRescueMeTypeCar',
      desc: '',
      args: [],
    );
  }

  /// `Bus`
  String get mainRescueMeTypeBus {
    return Intl.message(
      'Bus',
      name: 'mainRescueMeTypeBus',
      desc: '',
      args: [],
    );
  }

  /// `Truck`
  String get mainRescueMeTypeTruck {
    return Intl.message(
      'Truck',
      name: 'mainRescueMeTypeTruck',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get mainRescueMeTypeOther {
    return Intl.message(
      'Other',
      name: 'mainRescueMeTypeOther',
      desc: '',
      args: [],
    );
  }

  /// `Please provide some details`
  String get mainRescueMeDetails {
    return Intl.message(
      'Please provide some details',
      name: 'mainRescueMeDetails',
      desc: '',
      args: [],
    );
  }

  /// `Details not provided`
  String get mainRescueMeDetailsMissing {
    return Intl.message(
      'Details not provided',
      name: 'mainRescueMeDetailsMissing',
      desc: '',
      args: [],
    );
  }

  /// `Send Request!`
  String get mainRescueMeRequestHelp {
    return Intl.message(
      'Send Request!',
      name: 'mainRescueMeRequestHelp',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'hu'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
