import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mylifeapp/core/config/injector_config.dart';
import 'package:mylifeapp/data/services/auth_service.dart';
import 'package:mylifeapp/ui/page/auth/login_page.dart';
import 'package:mylifeapp/ui/page/home/home_page.dart';

class AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final _authService = getIt<AuthService>();
  static final GoRouter route = GoRouter(
    navigatorKey: navigatorKey,
    refreshListenable: _authService,
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) {
          return LoginPage();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) {
          return HomePage();
        },
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      final bool isLoggedIn = _authService.isLoggedIn;
      final location = state.matchedLocation;
      final isLoggingIn = location == '/login';

      if (!isLoggedIn && !isLoggingIn) return '/login';
      if (isLoggedIn && isLoggingIn) return '/home';

      return null;
    },
  );
}
