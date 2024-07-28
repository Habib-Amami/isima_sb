import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RememberYouCheckbox extends StatefulWidget {
  bool isChecked;

  RememberYouCheckbox({
    super.key,
    required this.isChecked,
  });

  @override
  State<RememberYouCheckbox> createState() => _RememberYouCheckboxState();
}

class _RememberYouCheckboxState extends State<RememberYouCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: widget.isChecked,
          onChanged: (newValue) {
            setState(() {
              widget.isChecked = newValue!;
            });
          },
        ),
        Text(
          "Remember you ?",
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
