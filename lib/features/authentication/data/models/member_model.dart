import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/member_entity.dart';

part 'member_model.g.dart';

@JsonSerializable()
class MemberModel extends MemberEntity {
  MemberModel({
    required super.id,
    required super.photoURL,
    required super.username,
    required super.studyLevel,
    required super.phoneNumber,
    required super.email,
    // ignore: non_constant_identifier_names
    required super.FCMtoken,
    required super.role,
  });

  factory MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(json);

  Map<String, dynamic> toJson() => _$MemberModelToJson(this);
}
