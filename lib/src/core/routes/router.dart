import 'package:go_router/go_router.dart';

import '../../features/authentication/presentation/pages/auth_page.dart';

final GoRouter route = GoRouter(
  initialLocation: AuthPage.routePath,
  routes: [
    //route the the auth page
    //displays the login page or regiter page
    //based on the state or [hasAccount]
    GoRoute(
      path: AuthPage.routePath,
      builder: (context, state) => const AuthPage(),
    ),
  ],
);
