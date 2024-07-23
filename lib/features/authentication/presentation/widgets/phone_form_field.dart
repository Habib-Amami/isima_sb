import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneFormField extends StatelessWidget {
  const PhoneFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.call_outlined),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          hintText: "Enter Your Phone Number Here",
        ),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(8)
        ],
        validator: (phoneNumber) {
          if (phoneNumber == null || phoneNumber.isEmpty) {
            return "Please provide a phone number";
          }
          return null;
        },
      ),
    );
  }
}
