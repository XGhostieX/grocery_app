import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/app_theme.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/heart_btn.dart';
import '../../../../../core/widgets/price.dart';

class OnSaleItem extends ConsumerStatefulWidget {
  const OnSaleItem({super.key});

  @override
  ConsumerState<OnSaleItem> createState() => _OnSaleState();
}

class _OnSaleState extends ConsumerState<OnSaleItem> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeNotifierProvider);
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => GoRouter.of(context).push(AppRouter.kDetailsView),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: theme.cardColor.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
                  fit: BoxFit.cover,
                  // width: MediaQuery.sizeOf(context).width * 0.22,
                  height: MediaQuery.sizeOf(context).width * 0.22,
                ),
                Column(
                  children: [
                    const CustomText(text: '1KG', size: 22, isBold: true),
                    InkWell(onTap: () {}, child: const Icon(IconlyLight.bag2)),
                    const HeartBtn(),
                  ],
                ),
              ],
            ),
            const Price(onSale: true, price: 2.59, salePrice: 1.59, textPrice: '1'),
            const SizedBox(height: 5),
            const CustomText(text: 'Title', isBold: true, size: 16),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
