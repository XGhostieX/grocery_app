import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../../core/widgets/custom_text.dart';
import 'on_sale_item.dart';

class OnSaleListview extends StatelessWidget {
  const OnSaleListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RotatedBox(
          quarterTurns: -1,
          child: Row(
            children: [
              CustomText(text: 'ON SALE', size: 22, isBold: true, color: Colors.blue),
              SizedBox(width: 5),
              Icon(IconlyBold.discount, color: Colors.blue),
            ],
          ),
        ),
        Flexible(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.26,
            child: ListView.separated(
              itemCount: 6,
              itemBuilder: (context, index) => const OnSaleItem(),
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ],
    );
  }
}
