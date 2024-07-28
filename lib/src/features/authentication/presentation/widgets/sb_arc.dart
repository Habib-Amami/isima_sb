import 'package:flutter/material.dart';

class SbArc extends StatelessWidget {
  final Animation<double>? opacity;
  const SbArc({super.key, this.opacity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          Theme.of(context).brightness == Brightness.light
              ? "assets/images/auth/arc_light.png"
              : "assets/images/auth/arc_dark.png",
          width: 100,
          opacity: opacity,
        ),
      ),
    );
  }
}
