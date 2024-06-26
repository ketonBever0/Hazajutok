// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginForm {
  String get email => throw _privateConstructorUsedError;
  bool get emailInit => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get passwordInit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormCopyWith<LoginForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormCopyWith<$Res> {
  factory $LoginFormCopyWith(LoginForm value, $Res Function(LoginForm) then) =
      _$LoginFormCopyWithImpl<$Res, LoginForm>;
  @useResult
  $Res call({String email, bool emailInit, String password, bool passwordInit});
}

/// @nodoc
class _$LoginFormCopyWithImpl<$Res, $Val extends LoginForm>
    implements $LoginFormCopyWith<$Res> {
  _$LoginFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailInit = null,
    Object? password = null,
    Object? passwordInit = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailInit: null == emailInit
          ? _value.emailInit
          : emailInit // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordInit: null == passwordInit
          ? _value.passwordInit
          : passwordInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormImplCopyWith<$Res>
    implements $LoginFormCopyWith<$Res> {
  factory _$$LoginFormImplCopyWith(
          _$LoginFormImpl value, $Res Function(_$LoginFormImpl) then) =
      __$$LoginFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, bool emailInit, String password, bool passwordInit});
}

/// @nodoc
class __$$LoginFormImplCopyWithImpl<$Res>
    extends _$LoginFormCopyWithImpl<$Res, _$LoginFormImpl>
    implements _$$LoginFormImplCopyWith<$Res> {
  __$$LoginFormImplCopyWithImpl(
      _$LoginFormImpl _value, $Res Function(_$LoginFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailInit = null,
    Object? password = null,
    Object? passwordInit = null,
  }) {
    return _then(_$LoginFormImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailInit: null == emailInit
          ? _value.emailInit
          : emailInit // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordInit: null == passwordInit
          ? _value.passwordInit
          : passwordInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginFormImpl extends _LoginForm {
  const _$LoginFormImpl(
      {required this.email,
      required this.emailInit,
      required this.password,
      required this.passwordInit})
      : super._();

  @override
  final String email;
  @override
  final bool emailInit;
  @override
  final String password;
  @override
  final bool passwordInit;

  @override
  String toString() {
    return 'LoginForm(email: $email, emailInit: $emailInit, password: $password, passwordInit: $passwordInit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailInit, emailInit) ||
                other.emailInit == emailInit) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordInit, passwordInit) ||
                other.passwordInit == passwordInit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, emailInit, password, passwordInit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormImplCopyWith<_$LoginFormImpl> get copyWith =>
      __$$LoginFormImplCopyWithImpl<_$LoginFormImpl>(this, _$identity);
}

abstract class _LoginForm extends LoginForm {
  const factory _LoginForm(
      {required final String email,
      required final bool emailInit,
      required final String password,
      required final bool passwordInit}) = _$LoginFormImpl;
  const _LoginForm._() : super._();

  @override
  String get email;
  @override
  bool get emailInit;
  @override
  String get password;
  @override
  bool get passwordInit;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormImplCopyWith<_$LoginFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
