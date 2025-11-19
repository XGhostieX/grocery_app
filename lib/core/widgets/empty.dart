import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/app_router.dart';
import 'custom_text.dart';
import 'elevated_btn.dart';

class Empty extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const Empty({super.key, required this.image, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(image),
            const SizedBox(height: 10),
            const CustomText(text: 'Whoops!', size: 40, isBold: true, color: Colors.red),
            const SizedBox(height: 20),
            CustomText(text: 'Your $title is Empty', size: 20, color: Colors.cyan),
            const SizedBox(height: 10),
            CustomText(text: subtitle, size: 20, color: Colors.cyan),
            const SizedBox(height: 20),
            ElevatedBtn(
              title: 'Browse Products',
              bgColor: Theme.of(context).colorScheme.secondary,
              fgColor: Theme.of(context).textTheme.bodyLarge!.color,
              function: () => GoRouter.of(context).push(AppRouter.kProductsView),
            ),
          ],
        ),
      ),
    );
  }
}
