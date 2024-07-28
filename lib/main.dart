import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:isima_sb/src/core/routes/router.dart';

import 'src/core/theme/theme.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: route,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      darkTheme: const AppTheme().dark(),
      theme: const AppTheme().light(),
      // home: StreamBuilder(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     // Loading state
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(child: CircularProgressIndicator());
      //     }

      //     // Error state
      //     if (snapshot.hasError) {
      //       return const Center(child: Text('Something went wrong!'));
      //     }

      //     // Unauthenticated state
      //     if (!snapshot.hasData) {
      //       return const Center(child: LoginPage());
      //     } else {
      //       // Authenticated state
      //       User? user = snapshot.data;
      //       if (user != null) {
      //         return Scaffold(
      //           body: SafeArea(
      //             child: TextButton(
      //                 onPressed: FirebaseAuth.instance.signOut,
      //                 child: Text("test")),
      //           ),
      //         );
      //       }
      //     }

      //     // Default case (shouldn't really be needed)
      //     return const Center(child: Text('Unknown state'));
      //   },
      // ),
    );
  }
}
