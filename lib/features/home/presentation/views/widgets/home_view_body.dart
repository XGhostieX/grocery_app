import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/text_btn.dart';
import 'card_swiper.dart';
import 'on_sale_listview.dart';
import 'products_gridview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CardSwiper(),
          TextBtn(
            title: 'View All',
            function: () => GoRouter.of(context).push(AppRouter.kSaleView),
            color: Colors.blue,
          ),
          const OnSaleListview(),
          Padding(
            padding: const EdgeInsets.all(10).copyWith(right: 0, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(text: 'Our Products', size: 22, isBold: true),
                TextBtn(title: 'Browse All', function: () {}, color: Colors.blue),
              ],
            ),
          ),
          const ProductsGridview(),
        ],
      ),
    );
  }
}
