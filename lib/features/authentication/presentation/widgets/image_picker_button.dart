import 'package:flutter/material.dart';

class ImagePickerButton extends StatelessWidget {
  final String label;
  final Icon icon;
  final void Function() onPressed;

  const ImagePickerButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      onPressed: onPressed,
      label: Text(label),
      icon: icon,
    );
  }
}
