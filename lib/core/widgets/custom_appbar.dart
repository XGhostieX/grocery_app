import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/app_theme.dart';
import 'custom_text.dart';

class CustomAppbar extends ConsumerWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final List<Widget>? actions;
  const CustomAppbar({super.key, required this.title, this.centerTitle = false, this.actions});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeNotifierProvider);
    return AppBar(
      title: CustomText(text: title, isBold: true),
      centerTitle: centerTitle,
      backgroundColor: theme.scaffoldBackgroundColor,
      elevation: 0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
