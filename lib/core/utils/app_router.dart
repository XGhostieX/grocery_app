import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/auth_view.dart';
import '../../features/auth/presentation/views/widgets/tabs.dart';
import '../../features/details/presentation/views/details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/widgets/products_view.dart';
import '../../features/home/presentation/views/widgets/sale_view.dart';
import '../../features/user/presentation/views/widgets/wishlist_view.dart';

abstract class AppRouter {
  static const kAuthView = '/auth';
  static const kHomeView = '/home';
  static const kSaleView = '/sale';
  static const kProductsView = '/products';
  static const kDetailsView = '/details';
  static const kWishlistView = '/wishlist';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const Tabs()),
      GoRoute(path: kAuthView, builder: (context, state) => const AuthView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kSaleView, builder: (context, state) => const SaleView()),
      GoRoute(path: kProductsView, builder: (context, state) => const ProductsView()),
      GoRoute(path: kDetailsView, builder: (context, state) => const DetailsView()),
      GoRoute(path: kWishlistView, builder: (context, state) => const WishlistView()),
    ],
  );
}
