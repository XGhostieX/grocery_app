import 'package:flutter/material.dart' hide ThemeMode;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_theme.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => Scaffold(
        body: ListTile(
          leading: const Icon(Icons.dark_mode_rounded),
          title: const Text('Dark Theme'),
          trailing: Switch.adaptive(
            value: ref.watch(themeNotifierProvider.notifier).mode == ThemeMode.dark,
            onChanged: (value) => ref.watch(themeNotifierProvider.notifier).toggleTheme(),
          ),
        ),
      ),
    );
  }
}
