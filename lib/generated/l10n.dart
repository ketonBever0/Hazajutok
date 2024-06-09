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

  /// `Username`
  String get authUsername {
    return Intl.message(
      'Username',
      name: 'authUsername',
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

  /// ``
  String get authMissingEmail {
    return Intl.message(
      '',
      name: 'authMissingEmail',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get authMissingPassword {
    return Intl.message(
      '',
      name: 'authMissingPassword',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get authMissingConfirmPassword {
    return Intl.message(
      '',
      name: 'authMissingConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get authMissingMobileNumber {
    return Intl.message(
      '',
      name: 'authMissingMobileNumber',
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
