import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.333,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) =>
            Image.asset(Assets().offers[index], fit: BoxFit.cover),
        itemCount: Assets().offers.length,
        autoplay: true,
        pagination: const SwiperPagination(),
      ),
    );
  }
}
