import 'package:flutter_test/flutter_test.dart';

import 'package:isima_sb/features/authentication/domain/entities/member_entity.dart';

void main() {
  late MemberEntity member1;
  late MemberEntity member2;
  late MemberEntity member3;

  setUp(
    () {
      member1 = MemberEntity(
        id: '1',
        photoURL: 'http://example.com/photo1.jpg',
        username: 'user1',
        studyLevel: 'Undergraduate',
        phoneNumber: 1234567890,
        email: 'user1@example.com',
        FCMtoken: 'token1',
        role: 'member',
      );
      member2 = MemberEntity(
        id: '1',
        photoURL: 'http://example.com/photo1.jpg',
        username: 'user1',
        studyLevel: 'Undergraduate',
        phoneNumber: 1234567890,
        email: 'user1@example.com',
        FCMtoken: 'token1',
        role: 'member',
      );
      member3 = MemberEntity(
        id: '2',
        photoURL: 'http://example.com/photo2.jpg',
        username: 'user2',
        studyLevel: 'Graduate',
        phoneNumber: 9876543210,
        email: 'user2@example.com',
        FCMtoken: 'token2',
        role: 'admin',
      );
    },
  );
  group('MemberEntity', () {
    test('constructor creates a valid instance', () {
      // Arrange is implicit in the setUp method

      // Act is not needed as we are just checking the state

      // Assert
      expect(member1.id, '1');
      expect(member1.photoURL, 'http://example.com/photo1.jpg');
      expect(member1.username, 'user1');
      expect(member1.studyLevel, 'Undergraduate');
      expect(member1.phoneNumber, 1234567890);
      expect(member1.email, 'user1@example.com');
      expect(member1.FCMtoken, 'token1');
      expect(member1.role, 'member');
    });

    test('supports value equality', () {
      // Arrange is implicit in the setUp method

      // Act is not needed as we are just checking equality

      // Assert
      expect(member1, equals(member2));
      expect(member1, isNot(equals(member3)));
    });

    test('copyWith creates a new instance with updated values', () {
      // Arrange
      const newName = 'user1_updated';

      // Act
      final updatedMember = member1.copyWith(username: newName);

      // Assert
      expect(updatedMember.username, newName);
      expect(updatedMember.id, member1.id);
      expect(updatedMember.photoURL, member1.photoURL);
      expect(updatedMember.studyLevel, member1.studyLevel);
      expect(updatedMember.phoneNumber, member1.phoneNumber);
      expect(updatedMember.email, member1.email);
      expect(updatedMember.FCMtoken, member1.FCMtoken);
      expect(updatedMember.role, member1.role);
    });

    test('toString returns a string representation of the instance', () {
      // Arrange
      const expectedString =
          'MemberEntity(id: 1, photoURL: http://example.com/photo1.jpg, username: user1, studyLevel: Undergraduate, phoneNumber: 1234567890, email: user1@example.com, FCMtoken: token1, role: member)';

      // Act
      final resultString = member1.toString();

      // Assert
      expect(resultString, expectedString);
    });

    test('hashCode returns an integer representation of the instance', () {
      // Arrange & Act are implicit

      // Assert
      expect(member1.hashCode, isA<int>());
    });
  });
}
