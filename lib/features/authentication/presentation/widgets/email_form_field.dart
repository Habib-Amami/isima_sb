import 'package:flutter/material.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.email_outlined,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          hintText: "Enter Your Email Here",
        ),
        validator: (email) {
          switch (email) {
            case null:
            case '':
              return "Please provide a email address";
            // r'''^(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+                     # Local part of the email before @
            //   (?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*                    # Additional parts of local part separated by dots
            //   |                                                      # OR
            //   "(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f  # Quoted string part
            //   |\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")                    # Escaped characters in quoted string
            //   @                                                      # At symbol separating local and domain parts
            //   (?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?                  # First part of the domain
            //   \.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?                    # Additional domain parts
            //   |\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}   # OR IPv4 address part
            //   (?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?                # Final part of IPv4 address
            //   |[a-z0-9-]*[a-z0-9]:                                   # OR IPv6 address part
            //   (?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f       # Characters allowed in IPv6
            //   |\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$''';
            default:
              if (!RegExp(
                      r'''^(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)])$''')
                  .hasMatch(email)) {
                return "Please provide a valid email address";
              }
              return null;
          }
        },
      ),
    );
  }
}
