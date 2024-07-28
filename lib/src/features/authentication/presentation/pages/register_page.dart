import 'package:flutter/material.dart';

import '../widgets/auth_button.dart';
import '../widgets/auth_redirect_row.dart';
import '../widgets/auth_title.dart';
import '../widgets/classes_drop_down_menu.dart';
import '../widgets/email_form_field.dart';
import '../widgets/image_picker_button.dart';
import '../widgets/password_form_field.dart';
import '../widgets/phone_form_field.dart';
import '../widgets/sb_arc.dart';
import '../widgets/user_name_form_field.dart';
import '../widgets/waves.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback toggleAccount;

  const RegisterPage({
    super.key,
    required this.toggleAccount,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Form key for managing the state of the login form
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // Variables to manage the visibility of the password
  final bool _isObscure = true;

  //
  String username = "";
  String phoneNumber = "";
  String email = "";
  String passsword = "";
  ISIMaClasses? selectedClass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.bottomCenter,
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
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 24, bottom: 8.0),
                          child: CircleAvatar(
                            radius: 70,
                            child: CircleAvatar(
                              radius: 65,
                              backgroundColor: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: SbArc(
                                  opacity: AlwaysStoppedAnimation(0.6),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ImagePickerButton(
                              label: "Gallery",
                              icon: const Icon(
                                Icons.add_photo_alternate_outlined,
                              ),
                              onPressed: () {},
                            ),
                            ImagePickerButton(
                              label: "Camera",
                              icon: const Icon(Icons.add_a_photo_outlined),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      const AuthTitle(
                        title: "Username",
                      ),
                      UsernameFormField(
                        onSaved: (newUsername) {
                          if (null != newUsername) {
                            username = newUsername.trim();
                          }
                        },
                      ),
                      const AuthTitle(
                        title: "Study Level",
                      ),
                      ClassesDropDownMenu(
                        onSelected: (ISIMaClasses? classe) {
                          if (null != classe) {
                            setState(() {
                              selectedClass = classe;
                            });
                          }
                        },
                      ),
                      const AuthTitle(
                        title: "Phone Number",
                      ),
                      PhoneFormField(
                        onSaved: (newPhoneNumber) {
                          if (null != newPhoneNumber) {
                            phoneNumber = newPhoneNumber.trim();
                          }
                        },
                      ),
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
                      AuthButton(
                        label: "Register",
                        icon: const Icon(Icons.app_registration),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {}
                        },
                      ),
                      AuthRedirectionRow(
                        redirectionLabel: "Already have an account ?",
                        redirectionButtonLabel: "Log In",
                        redirectionButtonOnPressed: widget.toggleAccount,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
