import 'package:flutter/material.dart';

class AuthRedirectionRow extends StatelessWidget {
  final String redirectionLabel;
  final String redirectionButtonLabel;
  final void Function() redirectionButtonOnPressed;

  const AuthRedirectionRow({
    super.key,
    required this.redirectionLabel,
    required this.redirectionButtonLabel,
    required this.redirectionButtonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          redirectionLabel,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed: redirectionButtonOnPressed,
          child: Text(
            redirectionButtonLabel,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
