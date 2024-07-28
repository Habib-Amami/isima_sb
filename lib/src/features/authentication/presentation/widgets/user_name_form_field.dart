import 'package:flutter/material.dart';

class UsernameFormField extends StatelessWidget {
  final void Function(String? newUsername) onSaved;

  const UsernameFormField({
    super.key,
    required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.person_outline,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          hintText: "Enter Your Username Here",
          helperText: "Your Username must be at least 6 characters",
        ),
        validator: (username) {
          switch (username) {
            case null:
            case '':
              return "Please provide a username";
            default:
              if (username.length < 6) {
                return "Uername must be at least 6 characters long";
              }
              return null;
          }
        },
        onSaved: onSaved,
      ),
    );
  }
}
