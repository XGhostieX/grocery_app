import 'package:auto_hide_keyboard/auto_hide_keyboard.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart' hide ThemeMode;
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_theme.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_text.dart';
import 'user_tile.dart';

class UserViewBody extends ConsumerStatefulWidget {
  const UserViewBody({super.key});

  @override
  ConsumerState<UserViewBody> createState() => _UserViewBodyState();
}

class _UserViewBodyState extends ConsumerState<UserViewBody> {
  final TextEditingController addressController = TextEditingController();

  @override
  void dispose() {
    addressController.dispose();
    super.dispose();
  }

  void showAddressDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.info,
      animType: AnimType.scale,
      body: Column(
        children: [
          const CustomText(text: 'Update Address', size: 20, isBold: true),
          const SizedBox(height: 10),
          AutoHideKeyboard(
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Address',
                hintText: '123 Main ST',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ],
      ),
      btnOkText: 'Update',
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }

  void showLogoutDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.scale,
      title: 'Sign Out',
      desc: 'Do you Want to Sign Out ?',
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Row(
              children: [
                CustomText(text: 'Hi, ', color: Colors.cyan, size: 27, isBold: true),
                CustomText(text: 'Death Ghost', size: 25, isBold: true),
              ],
            ),
            const SizedBox(height: 5),
            const CustomText(text: 'Ghost@gmail.com', size: 16),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            UserTile(
              leading: IconlyBold.profile,
              title: 'Address',
              subtitle: 'My Address',
              function: () => showAddressDialog(context),
            ),
            UserTile(leading: IconlyBold.bag, title: 'Orders', function: () {}),
            UserTile(
              leading: IconlyBold.heart,
              title: 'Wishlist',
              function: () => GoRouter.of(context).push(AppRouter.kWishlistView),
            ),
            UserTile(leading: IconlyBold.show, title: 'Viewed', function: () {}),
            UserTile(leading: IconlyBold.unlock, title: 'Forget Password', function: () {}),
            UserTile(
              leading: Icons.dark_mode_rounded,
              title: 'Dark Theme',
              trailing: Switch.adaptive(
                value: ref.watch(themeNotifierProvider.notifier).mode == ThemeMode.dark,
                onChanged: (value) => setState(() {
                  ref.watch(themeNotifierProvider.notifier).toggleTheme();
                }),
              ),
              function: () => setState(() {
                ref.watch(themeNotifierProvider.notifier).toggleTheme();
              }),
            ),
            UserTile(
              leading: IconlyBold.logout,
              title: 'Logout',
              function: () => showLogoutDialog(context),
            ),
          ],
        ),
      ),
    );
  }
}
