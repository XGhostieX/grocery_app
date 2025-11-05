import 'package:flutter/material.dart';

import '../../../../../core/widgets/text_btn.dart';
import 'card_swiper.dart';
import 'on_sale_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(),
            TextBtn(title: 'View All'),
            OnSaleListview(),
          ],
        ),
      ),
    );
  }
}
