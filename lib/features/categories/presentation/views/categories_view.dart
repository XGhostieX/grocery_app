import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appbar.dart';
import 'widgets/categories_view_body.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: 'Categories'),
      body: CategoriesViewBody(),
    );
  }
}
