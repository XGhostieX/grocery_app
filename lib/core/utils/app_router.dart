import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/auth_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kAuthView = '/auth-view';
  static const kHomeView = '/home-view';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeView()),
      GoRoute(path: kAuthView, builder: (context, state) => const AuthView()),
    ],
  );
}
