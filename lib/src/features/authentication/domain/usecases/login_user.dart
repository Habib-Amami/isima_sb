import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failure.dart';
import '../repositories/authentication_repository.dart';

class LoginUser {
  final AuthenticationRepository repository;

  LoginUser({
    required this.repository,
  });

  Future<Either<Failure, UserCredential>> call({
    required String email,
    required String password,
  }) {
    return repository.loginUser(
      email: email,
      password: password,
    );
  }
}
