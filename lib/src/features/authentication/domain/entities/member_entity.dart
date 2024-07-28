// ignore_for_file: non_constant_identifier_names

class MemberEntity {
  final String id;
  final String photoURL;
  final String username;
  final String studyLevel;
  final int phoneNumber;
  final String email;
  final String FCMtoken;
  final String role;

  MemberEntity({
    required this.id,
    required this.photoURL,
    required this.username,
    required this.studyLevel,
    required this.phoneNumber,
    required this.email,
    required this.FCMtoken,
    required this.role,
  });

  MemberEntity copyWith({
    String? id,
    String? photoURL,
    String? username,
    String? studyLevel,
    int? phoneNumber,
    String? email,
    String? FCMtoken,
    String? role,
  }) {
    return MemberEntity(
      id: id ?? this.id,
      photoURL: photoURL ?? this.photoURL,
      username: username ?? this.username,
      studyLevel: studyLevel ?? this.studyLevel,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      FCMtoken: FCMtoken ?? this.FCMtoken,
      role: role ?? this.role,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MemberEntity &&
        other.id == id &&
        other.photoURL == photoURL &&
        other.username == username &&
        other.studyLevel == studyLevel &&
        other.phoneNumber == phoneNumber &&
        other.email == email &&
        other.FCMtoken == FCMtoken &&
        other.role == role;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        photoURL.hashCode ^
        username.hashCode ^
        studyLevel.hashCode ^
        phoneNumber.hashCode ^
        email.hashCode ^
        FCMtoken.hashCode ^
        role.hashCode;
  }

  @override
  String toString() {
    return 'MemberEntity(id: $id, photoURL: $photoURL, username: $username, studyLevel: $studyLevel, phoneNumber: $phoneNumber, email: $email, FCMtoken: $FCMtoken, role: $role)';
  }
}
