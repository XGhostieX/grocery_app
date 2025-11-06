import 'package:flutter/material.dart';

import 'product_item.dart';

class ProductsGridview extends StatelessWidget {
  const ProductsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio:
            MediaQuery.sizeOf(context).width / (MediaQuery.sizeOf(context).height * 0.65),
      ),
      itemCount: 6,
      itemBuilder: (context, index) => const ProductItem(),
    );
  }
}
