import 'package:flutter/material.dart';

import 'core/theme/theme.dart';
import 'features/authentication/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      darkTheme: const AppTheme().dark(),
      theme: const AppTheme().light(),
      home: const LoginPage(),
    );
  }
}
