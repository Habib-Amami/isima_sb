import 'package:flutter/material.dart';

import '../widgets/auth_button.dart';
import '../widgets/auth_redirect_row.dart';
import '../widgets/auth_title.dart';
import '../widgets/email_form_field.dart';
import '../widgets/forget_password_button.dart';
import '../widgets/password_form_field.dart';
import '../widgets/remember_you_checkbox.dart';
import '../widgets/sb_arc.dart';
import '../widgets/waves.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Form key for managing the state of the login form
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  //Variables to manage the state of the 'Remember Me' checkbox
  final bool _isChecked = false;

  // Variables to manage the visibility of the password
  final bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            const Waves(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SbArc(),
                    const AuthTitle(
                      title: "Email Address",
                    ),
                    const EmailFormField(),
                    const AuthTitle(
                      title: "Password",
                    ),
                    PasswordFormField(
                      isObscure: _isObscure,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 200,
                          // 'Remember Me' checkbox
                          child: RememberYouCheckbox(
                            isChecked: _isChecked,
                          ),
                        ),
                        // 'Forget Password?' button
                        ForgetPasssworButton(
                          onPressed: () {},
                        ),
                      ],
                    ),
                    AuthButton(
                      label: "Log in",
                      icon: const Icon(Icons.login),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {}
                      },
                    ),
                    AuthRedirectionRow(
                      redirectionLabel: "Don't have an account ?",
                      redirectionButtonLabel: "Register",
                      redirectionButtonOnPressed: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
