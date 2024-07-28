import 'package:flutter/material.dart';

import 'login_page.dart';
import 'register_page.dart';

class AuthPage extends StatefulWidget {
  static String routePath = "/";

  const AuthPage({super.key});

  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  bool hasAccount = true;

  void toggleAccount() {
    setState(() {
      hasAccount = !hasAccount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return hasAccount
        ? LoginPage(
            toggleAccount: toggleAccount,
          )
        : RegisterPage(
            toggleAccount: toggleAccount,
          );
  }
}
