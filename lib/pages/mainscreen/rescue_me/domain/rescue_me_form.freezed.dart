// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rescue_me_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RescueMeForm {
  bool get isLoggedIn => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RescueMeFormCopyWith<RescueMeForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RescueMeFormCopyWith<$Res> {
  factory $RescueMeFormCopyWith(
          RescueMeForm value, $Res Function(RescueMeForm) then) =
      _$RescueMeFormCopyWithImpl<$Res, RescueMeForm>;
  @useResult
  $Res call(
      {bool isLoggedIn,
      String fullname,
      String mobile,
      String type,
      String details});
}

/// @nodoc
class _$RescueMeFormCopyWithImpl<$Res, $Val extends RescueMeForm>
    implements $RescueMeFormCopyWith<$Res> {
  _$RescueMeFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? fullname = null,
    Object? mobile = null,
    Object? type = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$RescueMeFormImplCopyWith<$Res>
    implements $RescueMeFormCopyWith<$Res> {
  factory _$$$RescueMeFormImplCopyWith(
          _$$RescueMeFormImpl value, $Res Function(_$$RescueMeFormImpl) then) =
      __$$$RescueMeFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoggedIn,
      String fullname,
      String mobile,
      String type,
      String details});
}

/// @nodoc
class __$$$RescueMeFormImplCopyWithImpl<$Res>
    extends _$RescueMeFormCopyWithImpl<$Res, _$$RescueMeFormImpl>
    implements _$$$RescueMeFormImplCopyWith<$Res> {
  __$$$RescueMeFormImplCopyWithImpl(
      _$$RescueMeFormImpl _value, $Res Function(_$$RescueMeFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? fullname = null,
    Object? mobile = null,
    Object? type = null,
    Object? details = null,
  }) {
    return _then(_$$RescueMeFormImpl(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$RescueMeFormImpl extends $RescueMeForm {
  const _$$RescueMeFormImpl(
      {required this.isLoggedIn,
      required this.fullname,
      required this.mobile,
      required this.type,
      required this.details})
      : super._();

  @override
  final bool isLoggedIn;
  @override
  final String fullname;
  @override
  final String mobile;
  @override
  final String type;
  @override
  final String details;

  @override
  String toString() {
    return 'RescueMeForm(isLoggedIn: $isLoggedIn, fullname: $fullname, mobile: $mobile, type: $type, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$RescueMeFormImpl &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoggedIn, fullname, mobile, type, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$RescueMeFormImplCopyWith<_$$RescueMeFormImpl> get copyWith =>
      __$$$RescueMeFormImplCopyWithImpl<_$$RescueMeFormImpl>(this, _$identity);
}

abstract class $RescueMeForm extends RescueMeForm {
  const factory $RescueMeForm(
      {required final bool isLoggedIn,
      required final String fullname,
      required final String mobile,
      required final String type,
      required final String details}) = _$$RescueMeFormImpl;
  const $RescueMeForm._() : super._();

  @override
  bool get isLoggedIn;
  @override
  String get fullname;
  @override
  String get mobile;
  @override
  String get type;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$$$RescueMeFormImplCopyWith<_$$RescueMeFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
