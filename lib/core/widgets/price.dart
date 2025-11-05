import 'package:flutter/material.dart';

import 'custom_text.dart';

class Price extends StatelessWidget {
  const Price({super.key});

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      child: Row(
        children: [
          CustomText(text: '1.59\$', size: 22, color: Colors.green),
          SizedBox(width: 5),
          CustomText(text: '2.59\$', size: 15, decoration: TextDecoration.lineThrough),
        ],
      ),
    );
  }
}
