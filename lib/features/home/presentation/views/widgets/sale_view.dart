import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_appbar.dart';
import '../../../../../core/widgets/custom_text.dart';
import 'on_sale_item.dart';

class SaleView extends StatelessWidget {
  final bool isEmpty = false;
  const SaleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'Products on Sale'),
      body: isEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(Assets.box),
                    const CustomText(
                      text: 'No products on sale yet!,\nStay tuned',
                      size: 30,
                      isBold: true,
                    ),
                  ],
                ),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 10,
              itemBuilder: (context, index) => const OnSaleItem(),
            ),
    );
  }
}
