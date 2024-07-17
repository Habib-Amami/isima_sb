import 'package:flutter/material.dart';

class Waves extends StatelessWidget {
  const Waves({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        Theme.of(context).brightness == Brightness.light
            ? "assets/images/auth/waves_light.png"
            : "assets/images/auth/waves_dark.png",
        opacity: const AlwaysStoppedAnimation(.45),
      ),
    );
  }
}
