import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, UserCredential>> loginUser({
    required String email,
    required String password,
  });

  // Future<Either<Failure, UserCredential>> registerUser({
  //   required String email,
  //   required String password,
  //   required String id,
  //   required String photoURL,
  //   required String username,
  //   required String studyLevel,
  //   required int phoneNumber,
  // });
}
