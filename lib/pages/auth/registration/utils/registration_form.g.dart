// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationFormImpl _$$RegistrationFormImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationFormImpl(
      fullname: json['fullname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      passwordAgain: json['passwordAgain'] as String,
      mobile: json['mobile'] as String,
    );

Map<String, dynamic> _$$RegistrationFormImplToJson(
        _$RegistrationFormImpl instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'email': instance.email,
      'password': instance.password,
      'passwordAgain': instance.passwordAgain,
      'mobile': instance.mobile,
    };
