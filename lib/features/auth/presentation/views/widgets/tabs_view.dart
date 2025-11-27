import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../../core/theme/app_theme.dart';
import '../../../../cart/presentation/views/cart_view.dart';
import '../../../../categories/presentation/views/categories_view.dart';
import '../../../../home/presentation/views/home_view.dart';
import '../../../../user/presentation/views/user_view.dart';

class TabsView extends ConsumerWidget {
  const TabsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeNotifierProvider);
    PersistentTabController controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: controller,
      screens: [const HomeView(), const CategoriesView(), const CartView(), const UserView()],
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(IconlyBold.home),
          inactiveIcon: const Icon(IconlyLight.home),
          activeColorPrimary: theme.iconTheme.color!,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(IconlyBold.category),
          inactiveIcon: const Icon(IconlyLight.category),
          activeColorPrimary: theme.iconTheme.color!,
        ),
        PersistentBottomNavBarItem(
          icon: Badge.count(
            count: 6,
            offset: const Offset(-28.5, 15),
            backgroundColor: Colors.blue,
            child: const Center(child: Icon(IconlyBold.buy)),
          ),
          inactiveIcon: Badge.count(
            count: 6,
            offset: const Offset(-28.5, 15),
            backgroundColor: Colors.blue,
            child: const Center(child: Icon(IconlyLight.buy)),
          ),
          activeColorPrimary: theme.iconTheme.color!,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(IconlyBold.user2),
          inactiveIcon: const Icon(IconlyLight.user2),
          activeColorPrimary: theme.iconTheme.color!,
        ),
      ],
      popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
      // padding: const EdgeInsets.only(top: 8),
      backgroundColor: theme.cardColor,
      isVisible: true,

      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style6,
    );
  }
}
