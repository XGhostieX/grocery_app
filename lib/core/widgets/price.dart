import 'package:flutter/material.dart';

import 'custom_text.dart';

class Price extends StatelessWidget {
  final double salePrice, price;
  final String textPrice;
  final bool onSale;
  const Price({
    super.key,
    required this.onSale,
    required this.salePrice,
    required this.price,
    required this.textPrice,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          CustomText(
            text: '\$${(onSale ? salePrice : price * int.parse(textPrice)).toStringAsFixed(2)}',
            size: 22,
            color: Colors.green,
          ),
          const SizedBox(width: 5),
          if (onSale)
            CustomText(text: '\$$price', size: 15, decoration: TextDecoration.lineThrough),
        ],
      ),
    );
  }
}
