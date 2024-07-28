import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String label;
  final Icon icon;
  final void Function() onPressed;

  const AuthButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: FilledButton.icon(
            icon: icon,
            style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            )),
            onPressed: onPressed,
            label: Text(
              label,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
