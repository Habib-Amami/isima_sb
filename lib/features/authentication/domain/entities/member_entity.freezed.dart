// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemberEntity {
  String get id => throw _privateConstructorUsedError;
  String get photoURL => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get studyLevel => throw _privateConstructorUsedError;
  int get phoneNumber => throw _privateConstructorUsedError;
  String get email =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get FCMtoken => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberEntityCopyWith<MemberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberEntityCopyWith<$Res> {
  factory $MemberEntityCopyWith(
          MemberEntity value, $Res Function(MemberEntity) then) =
      _$MemberEntityCopyWithImpl<$Res, MemberEntity>;
  @useResult
  $Res call(
      {String id,
      String photoURL,
      String username,
      String studyLevel,
      int phoneNumber,
      String email,
      String FCMtoken,
      String role});
}

/// @nodoc
class _$MemberEntityCopyWithImpl<$Res, $Val extends MemberEntity>
    implements $MemberEntityCopyWith<$Res> {
  _$MemberEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photoURL = null,
    Object? username = null,
    Object? studyLevel = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? FCMtoken = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: null == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      studyLevel: null == studyLevel
          ? _value.studyLevel
          : studyLevel // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      FCMtoken: null == FCMtoken
          ? _value.FCMtoken
          : FCMtoken // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberEntityImplCopyWith<$Res>
    implements $MemberEntityCopyWith<$Res> {
  factory _$$MemberEntityImplCopyWith(
          _$MemberEntityImpl value, $Res Function(_$MemberEntityImpl) then) =
      __$$MemberEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String photoURL,
      String username,
      String studyLevel,
      int phoneNumber,
      String email,
      String FCMtoken,
      String role});
}

/// @nodoc
class __$$MemberEntityImplCopyWithImpl<$Res>
    extends _$MemberEntityCopyWithImpl<$Res, _$MemberEntityImpl>
    implements _$$MemberEntityImplCopyWith<$Res> {
  __$$MemberEntityImplCopyWithImpl(
      _$MemberEntityImpl _value, $Res Function(_$MemberEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photoURL = null,
    Object? username = null,
    Object? studyLevel = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? FCMtoken = null,
    Object? role = null,
  }) {
    return _then(_$MemberEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: null == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      studyLevel: null == studyLevel
          ? _value.studyLevel
          : studyLevel // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      FCMtoken: null == FCMtoken
          ? _value.FCMtoken
          : FCMtoken // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MemberEntityImpl with DiagnosticableTreeMixin implements _MemberEntity {
  const _$MemberEntityImpl(
      {required this.id,
      required this.photoURL,
      required this.username,
      required this.studyLevel,
      required this.phoneNumber,
      required this.email,
      required this.FCMtoken,
      required this.role});

  @override
  final String id;
  @override
  final String photoURL;
  @override
  final String username;
  @override
  final String studyLevel;
  @override
  final int phoneNumber;
  @override
  final String email;
// ignore: non_constant_identifier_names
  @override
  final String FCMtoken;
  @override
  final String role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemberEntity(id: $id, photoURL: $photoURL, username: $username, studyLevel: $studyLevel, phoneNumber: $phoneNumber, email: $email, FCMtoken: $FCMtoken, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemberEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('photoURL', photoURL))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('studyLevel', studyLevel))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('FCMtoken', FCMtoken))
      ..add(DiagnosticsProperty('role', role));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.studyLevel, studyLevel) ||
                other.studyLevel == studyLevel) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.FCMtoken, FCMtoken) ||
                other.FCMtoken == FCMtoken) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, photoURL, username,
      studyLevel, phoneNumber, email, FCMtoken, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberEntityImplCopyWith<_$MemberEntityImpl> get copyWith =>
      __$$MemberEntityImplCopyWithImpl<_$MemberEntityImpl>(this, _$identity);
}

abstract class _MemberEntity implements MemberEntity {
  const factory _MemberEntity(
      {required final String id,
      required final String photoURL,
      required final String username,
      required final String studyLevel,
      required final int phoneNumber,
      required final String email,
      required final String FCMtoken,
      required final String role}) = _$MemberEntityImpl;

  @override
  String get id;
  @override
  String get photoURL;
  @override
  String get username;
  @override
  String get studyLevel;
  @override
  int get phoneNumber;
  @override
  String get email;
  @override // ignore: non_constant_identifier_names
  String get FCMtoken;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$MemberEntityImplCopyWith<_$MemberEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
