import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mylifeapp/core/config/injector_config.dart';
import 'package:mylifeapp/ui/controllers/auth_controller.dart';
import 'package:mylifeapp/ui/page/auth/login_page.dart';
import 'package:mylifeapp/ui/page/auth/telabloqueio_page.dart';
import 'package:mylifeapp/ui/page/home/home_base_base.dart';
import 'constants/gorouter_path_config.dart';

class AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final _authController = getIt<AuthController>();
  static final GoRouter route = GoRouter(
    navigatorKey: navigatorKey,
    refreshListenable: _authController,
    initialLocation: AppRouterPath.login,
    routes: [
      GoRoute(
        path: AppRouterPath.login,
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: AppRouterPath.home,
        builder: (context, state) => HomeBasePage(),
      ),
      GoRoute(
        path: AppRouterPath.lock,
        builder: (context, state) => ScreenLockPage(),
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      final bool isLoggedIn = _authController.isLoggedIn;
      final location = state.matchedLocation;
      final isLoggingIn = location == AppRouterPath.login;

      if (!isLoggedIn && !isLoggingIn) return AppRouterPath.login;
      if (isLoggedIn && isLoggingIn) return AppRouterPath.home;

      return null;
    },
  );
}
