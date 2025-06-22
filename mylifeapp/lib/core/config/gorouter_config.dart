import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mylifeapp/core/config/injector_config.dart';
import 'package:mylifeapp/data/services/auth_service.dart';
import 'package:mylifeapp/ui/page/auth/login_page.dart';
import 'package:mylifeapp/ui/page/home/home_page.dart';
import 'package:mylifeapp/ui/page/splash/splash_page.dart';

import 'constants/gorouter_path_config.dart';

class AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final _authService = getIt<AuthService>();
  static final GoRouter route = GoRouter(
    navigatorKey: navigatorKey,
    refreshListenable: _authService,
    initialLocation: AppRouterPath.login,
    routes: [
      GoRoute(
        path: AppRouterPath.splash,
        builder: (context, state) => SplashPage(),
      ),
      GoRoute(
        path: AppRouterPath.login,
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: AppRouterPath.home,
        builder: (context, state) => HomePage(),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      final bool isLoggedIn = _authService.isLoggedIn;
      final location = state.matchedLocation;
      final isLoggingIn = location == AppRouterPath.login;

      if (!isLoggedIn && !isLoggingIn) return AppRouterPath.login;
      if (isLoggedIn && isLoggingIn) return AppRouterPath.home;

      return null;
    },
  );
}
