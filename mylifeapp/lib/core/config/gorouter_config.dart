import 'package:go_router/go_router.dart';
import 'package:mylifeapp/ui/page/auth/login_page.dart';
import 'package:mylifeapp/ui/page/home/home_page.dart';

class AppRouter {
  static final GoRouter route = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) {
          return LoginPage();
        },
      ),
      GoRoute(
        path: '/',
        builder: (context, state) {
          return HomePage();
        },
      ),
    ],
  );
}
