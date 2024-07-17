import 'package:flutter/material.dart';

class ForgetPasssworButton extends StatelessWidget {
  final void Function() onPressed;

  const ForgetPasssworButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        "Forget Password ?",
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
