// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationFormImpl _$$RegistrationFormImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationFormImpl(
      fullname: json['fullname'] as String,
      fullnameInit: json['fullnameInit'] as bool,
      email: json['email'] as String,
      emailInit: json['emailInit'] as bool,
      password: json['password'] as String,
      passwordInit: json['passwordInit'] as bool,
      passwordAgain: json['passwordAgain'] as String,
      passwordAgainInit: json['passwordAgainInit'] as bool,
      mobile: json['mobile'] as String,
      mobileInit: json['mobileInit'] as bool,
    );

Map<String, dynamic> _$$RegistrationFormImplToJson(
        _$RegistrationFormImpl instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'fullnameInit': instance.fullnameInit,
      'email': instance.email,
      'emailInit': instance.emailInit,
      'password': instance.password,
      'passwordInit': instance.passwordInit,
      'passwordAgain': instance.passwordAgain,
      'passwordAgainInit': instance.passwordAgainInit,
      'mobile': instance.mobile,
      'mobileInit': instance.mobileInit,
    };
