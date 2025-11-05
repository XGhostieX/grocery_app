import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.333,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) =>
              Image.asset(Assets().offers[index], fit: BoxFit.cover),
          itemCount: Assets().offers.length,
          autoplay: true,
          pagination: const SwiperPagination(),
        ),
      ),
    );
  }
}
