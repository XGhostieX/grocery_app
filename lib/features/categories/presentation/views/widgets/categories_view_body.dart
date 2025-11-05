import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'category_item.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: Assets().categories.length,
      itemBuilder: (context, index) => CategoryItem(
        image: Assets().categories[index]['image'],
        title: Assets().categories[index]['title'],
        color: Assets().categories[index]['color'],
      ),
    );
  }
}
