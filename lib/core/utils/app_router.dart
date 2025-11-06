import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/auth_view.dart';
import '../../features/auth/presentation/views/widgets/tabs.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/widgets/products_view.dart';
import '../../features/home/presentation/views/widgets/sale_view.dart';

abstract class AppRouter {
  static const kAuthView = '/auth';
  static const kHomeView = '/home';
  static const kSaleView = '/sale';
  static const kProductsView = '/products';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const Tabs()),
      GoRoute(path: kAuthView, builder: (context, state) => const AuthView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kSaleView, builder: (context, state) => const SaleView()),
      GoRoute(path: kProductsView, builder: (context, state) => const ProductsView()),
    ],
  );
}
