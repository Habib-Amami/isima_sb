import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_entity.freezed.dart';

@freezed
class MemberEntity with _$MemberEntity {
  const factory MemberEntity({
    required String photoURL,
    required String username,
    required String studyLevel,
    required int phoneNumber,
    required String email,
    // ignore: non_constant_identifier_names
    required String FCMtoken,
    required String role,
  }) = _MemberEntity;
}
