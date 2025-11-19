import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/elevated_btn.dart';
import 'cart_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedBtn(
                title: 'Order Now',
                bgColor: Colors.green,
                fgColor: Colors.white,
                function: () {},
              ),
              const CustomText(text: 'Total: \$18.10', size: 20, isBold: true),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            itemBuilder: (context, index) => const CartItem(),
            separatorBuilder: (context, index) => const SizedBox(height: 5),
            itemCount: 6,
          ),
        ),
      ],
    );
  }
}
