// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "authEmail": MessageLookupByLibrary.simpleMessage("E-mail"),
        "authFullname": MessageLookupByLibrary.simpleMessage("Username"),
        "authMissingConfirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password is missing"),
        "authMissingEmail":
            MessageLookupByLibrary.simpleMessage("E-mail is missing"),
        "authMissingFullname":
            MessageLookupByLibrary.simpleMessage("Username is missing"),
        "authMissingMobileNumber":
            MessageLookupByLibrary.simpleMessage("Mobile number is missing"),
        "authMissingPassword":
            MessageLookupByLibrary.simpleMessage("Password is missing"),
        "authMobileNumber": MessageLookupByLibrary.simpleMessage("Mobile"),
        "authPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "authPasswordAgain":
            MessageLookupByLibrary.simpleMessage("Password again"),
        "authPasswordAndConfirmPasswordNotMatching":
            MessageLookupByLibrary.simpleMessage(
                "Password and Confirm password must be equal"),
        "language": MessageLookupByLibrary.simpleMessage("English"),
        "loginErrorNoUser":
            MessageLookupByLibrary.simpleMessage("Provided user not exists."),
        "loginErrorWrongPassword":
            MessageLookupByLibrary.simpleMessage("Provided password is wrong."),
        "loginSuccess": MessageLookupByLibrary.simpleMessage("Welcome back"),
        "mainDrawerLogOut": MessageLookupByLibrary.simpleMessage("Log out"),
        "mainDrawerLogin": MessageLookupByLibrary.simpleMessage("Login"),
        "mainDrawerMyAccount":
            MessageLookupByLibrary.simpleMessage("My Account"),
        "mainDrawerRegistration":
            MessageLookupByLibrary.simpleMessage("Registration"),
        "mainTitle": MessageLookupByLibrary.simpleMessage("Car rescue"),
        "registrationFailed":
            MessageLookupByLibrary.simpleMessage("Registration failed."),
        "registrationSuccesful":
            MessageLookupByLibrary.simpleMessage("Registered as")
      };
}
