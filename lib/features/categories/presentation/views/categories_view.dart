import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/custom_text.dart';
import 'widgets/categories_view_body.dart';

class CategoriesView extends ConsumerWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(text: 'Categories', isBold: true),
        elevation: 0,
        backgroundColor: theme.scaffoldBackgroundColor,
      ),
      body: const CategoriesViewBody(),
    );
  }
}
