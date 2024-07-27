import 'package:firebase_auth/firebase_auth.dart';

import 'failure.dart';

class AuthenticationFailure extends FirebaseAuthException implements Failure {
  AuthenticationFailure({
    required super.code,
  });
}
