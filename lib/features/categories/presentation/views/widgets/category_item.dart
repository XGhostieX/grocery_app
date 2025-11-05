import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  const CategoryItem({super.key, required this.image, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withValues(alpha: 0.7), width: 2),
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).width * 0.3,
              width: MediaQuery.sizeOf(context).width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
              ),
            ),
            CustomText(text: title, size: 20, isBold: true),
          ],
        ),
      ),
    );
  }
}
