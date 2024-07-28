// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberModel _$MemberModelFromJson(Map<String, dynamic> json) => MemberModel(
      id: json['id'] as String,
      photoURL: json['photoURL'] as String,
      username: json['username'] as String,
      studyLevel: json['studyLevel'] as String,
      phoneNumber: (json['phoneNumber'] as num).toInt(),
      email: json['email'] as String,
      FCMtoken: json['FCMtoken'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$MemberModelToJson(MemberModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photoURL': instance.photoURL,
      'username': instance.username,
      'studyLevel': instance.studyLevel,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'FCMtoken': instance.FCMtoken,
      'role': instance.role,
    };
