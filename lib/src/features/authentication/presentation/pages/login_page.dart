import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../data/repositories/authentication_repository_impl.dart';
import '../../domain/usecases/login_user.dart';
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
  final VoidCallback toggleAccount;

  const LoginPage({
    super.key,
    required this.toggleAccount,
  });

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

  //
  String email = "";
  String passsword = "";

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
                    EmailFormField(
                      onSaved: (newEmail) {
                        if (null != newEmail) {
                          email = newEmail.trim();
                        }
                      },
                    ),
                    const AuthTitle(
                      title: "Password",
                    ),
                    PasswordFormField(
                      isObscure: _isObscure,
                      onSaved: (newPassword) {
                        if (null != newPassword) {
                          passsword = newPassword.trim();
                        }
                      },
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
                      onPressed: () async {
                        FirebaseFirestore.instance
                            .collection('movies')
                            .doc()
                            .set({"email": email});
                        if (_formkey.currentState!.validate()) {
                          _formkey.currentState!.save();
                          debugPrint(email);
                          debugPrint(passsword);

                          LoginUser(repository: AuthenticationRepositoryImpl())
                              .call(
                            email: email,
                            password: passsword,
                          );
                        }
                      },
                    ),
                    AuthRedirectionRow(
                      redirectionLabel: "Don't have an account ?",
                      redirectionButtonLabel: "Register",
                      redirectionButtonOnPressed: widget.toggleAccount,
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
