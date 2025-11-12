import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/icon_btn.dart';
import 'widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Cart (6)',
        actions: [IconBtn(icon: IconlyLight.delete, function: () {})],
      ),
      body: const CartViewBody(),
    );
  }
}
