import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../core/utils/functions/show_dialog.dart';
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
        actions: [
          IconBtn(
            icon: IconlyLight.delete,
            function: () => showAwesomeDialog(
              context: context,
              type: DialogType.warning,
              title: 'Clear Cart!',
              desc: 'Your Cart Will be Cleared',
              function: () {},
            ),
          ),
        ],
      ),
      body: const CartViewBody(),
    );
  }
}
