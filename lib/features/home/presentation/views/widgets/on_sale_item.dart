import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/theme/app_theme.dart';
import '../../../../../core/widgets/custom_text.dart';
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
      onTap: () {},
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
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGdA9ZyGdsm9kwde7wywf3xiaco_4_CZNpMw&s',
                  fit: BoxFit.cover,
                  // width: MediaQuery.sizeOf(context).width * 0.22,
                  height: MediaQuery.sizeOf(context).width * 0.22,
                ),
                Column(
                  children: [
                    const CustomText(text: '1KG', size: 22, isBold: true),
                    IconButton(onPressed: () {}, icon: const Icon(IconlyLight.bag2)),
                    IconButton(onPressed: () {}, icon: const Icon(IconlyLight.heart)),
                  ],
                ),
              ],
            ),
            const Price(),
            const SizedBox(height: 5),
            const CustomText(text: 'Title', isBold: true, size: 16),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
