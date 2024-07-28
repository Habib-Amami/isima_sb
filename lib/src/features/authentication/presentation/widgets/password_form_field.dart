import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PasswordFormField extends StatefulWidget {
  bool isObscure;
  final void Function(String? newPassword) onSaved;

  PasswordFormField({
    super.key,
    required this.isObscure,
    required this.onSaved,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        obscureText: widget.isObscure,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.lock_outlined,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          suffixIcon: IconButton(
            // Toggle visibility of the password with an icon button
            onPressed: () {
              setState(() {
                widget.isObscure = !widget.isObscure;
              });
            },
            icon: widget.isObscure
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
          ),
          hintText: "Enter Your Password Here",
          helperText: "Your password must be at least 6 characters",
        ),
        validator: (password) {
          switch (password) {
            case null:
            case '':
              return "Please provide a password";
            default:
              if (password.length < 6) {
                return "Password must be at least 6 characters long";
              }
              return null;
          }
        },
        onSaved: widget.onSaved,
      ),
    );
  }
}
