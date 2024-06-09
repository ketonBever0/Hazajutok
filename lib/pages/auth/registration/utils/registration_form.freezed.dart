// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationForm _$RegistrationFormFromJson(Map<String, dynamic> json) {
  return _RegistrationForm.fromJson(json);
}

/// @nodoc
mixin _$RegistrationForm {
  String get fullname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordAgain => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationFormCopyWith<RegistrationForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationFormCopyWith<$Res> {
  factory $RegistrationFormCopyWith(
          RegistrationForm value, $Res Function(RegistrationForm) then) =
      _$RegistrationFormCopyWithImpl<$Res, RegistrationForm>;
  @useResult
  $Res call(
      {String fullname,
      String email,
      String password,
      String passwordAgain,
      String mobile});
}

/// @nodoc
class _$RegistrationFormCopyWithImpl<$Res, $Val extends RegistrationForm>
    implements $RegistrationFormCopyWith<$Res> {
  _$RegistrationFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = null,
    Object? email = null,
    Object? password = null,
    Object? passwordAgain = null,
    Object? mobile = null,
  }) {
    return _then(_value.copyWith(
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordAgain: null == passwordAgain
          ? _value.passwordAgain
          : passwordAgain // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationFormImplCopyWith<$Res>
    implements $RegistrationFormCopyWith<$Res> {
  factory _$$RegistrationFormImplCopyWith(_$RegistrationFormImpl value,
          $Res Function(_$RegistrationFormImpl) then) =
      __$$RegistrationFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullname,
      String email,
      String password,
      String passwordAgain,
      String mobile});
}

/// @nodoc
class __$$RegistrationFormImplCopyWithImpl<$Res>
    extends _$RegistrationFormCopyWithImpl<$Res, _$RegistrationFormImpl>
    implements _$$RegistrationFormImplCopyWith<$Res> {
  __$$RegistrationFormImplCopyWithImpl(_$RegistrationFormImpl _value,
      $Res Function(_$RegistrationFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = null,
    Object? email = null,
    Object? password = null,
    Object? passwordAgain = null,
    Object? mobile = null,
  }) {
    return _then(_$RegistrationFormImpl(
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordAgain: null == passwordAgain
          ? _value.passwordAgain
          : passwordAgain // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationFormImpl extends _RegistrationForm {
  const _$RegistrationFormImpl(
      {required this.fullname,
      required this.email,
      required this.password,
      required this.passwordAgain,
      required this.mobile})
      : super._();

  factory _$RegistrationFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationFormImplFromJson(json);

  @override
  final String fullname;
  @override
  final String email;
  @override
  final String password;
  @override
  final String passwordAgain;
  @override
  final String mobile;

  @override
  String toString() {
    return 'RegistrationForm(fullname: $fullname, email: $email, password: $password, passwordAgain: $passwordAgain, mobile: $mobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationFormImpl &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordAgain, passwordAgain) ||
                other.passwordAgain == passwordAgain) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullname, email, password, passwordAgain, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationFormImplCopyWith<_$RegistrationFormImpl> get copyWith =>
      __$$RegistrationFormImplCopyWithImpl<_$RegistrationFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationFormImplToJson(
      this,
    );
  }
}

abstract class _RegistrationForm extends RegistrationForm {
  const factory _RegistrationForm(
      {required final String fullname,
      required final String email,
      required final String password,
      required final String passwordAgain,
      required final String mobile}) = _$RegistrationFormImpl;
  const _RegistrationForm._() : super._();

  factory _RegistrationForm.fromJson(Map<String, dynamic> json) =
      _$RegistrationFormImpl.fromJson;

  @override
  String get fullname;
  @override
  String get email;
  @override
  String get password;
  @override
  String get passwordAgain;
  @override
  String get mobile;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationFormImplCopyWith<_$RegistrationFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
