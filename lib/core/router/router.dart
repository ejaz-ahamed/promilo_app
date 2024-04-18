import 'package:go_router/go_router.dart';
import 'package:promilo_app/features/authentication/view/pages/login_page.dart';
import 'package:promilo_app/features/home/view/pages/description_page.dart';
import 'package:promilo_app/features/home/view/pages/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final router = GoRouter(
  initialLocation: LoginPage.routePath,
  routes: [
    GoRoute(
      path: LoginPage.routePath,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: HomePage.routePath,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: DescriptionPage.routePath,
      builder: (context, state) => const DescriptionPage(),
    ),
  ],
);

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return router;
}
