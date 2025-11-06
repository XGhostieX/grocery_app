import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/theme/app_theme.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/heart_btn.dart';
import '../../../../../core/widgets/price.dart';
import '../../../../../core/widgets/text_btn.dart';

class ProductItem extends ConsumerStatefulWidget {
  const ProductItem({super.key});

  @override
  ConsumerState<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends ConsumerState<ProductItem> {
  TextEditingController kgController = TextEditingController();

  @override
  void initState() {
    kgController.text = '1';
    super.initState();
  }

  @override
  void dispose() {
    kgController.dispose();
    super.dispose();
  }

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
            CachedNetworkImage(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGdA9ZyGdsm9kwde7wywf3xiaco_4_CZNpMw&s',
              fit: BoxFit.cover,
              // width: MediaQuery.sizeOf(context).width * 0.22,
              height: MediaQuery.sizeOf(context).width * 0.22,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: 'Title', isBold: true, size: 16),
                  HeartBtn(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Price(onSale: false, price: 2.59, salePrice: 0, textPrice: kgController.text),
                  const Spacer(),
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: TextField(
                      controller: kgController,
                      maxLength: 2,
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9.]'))],
                      decoration: InputDecoration(
                        counter: const Offstage(),
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                  const SizedBox(width: 5),

                  const CustomText(text: 'KG', size: 22, isBold: true),
                ],
              ),
            ),
            TextBtn(
              title: 'Add to Cart',
              function: () {},
              padding: 10,
              color: theme.textTheme.bodyLarge?.color,
            ),
          ],
        ),
      ),
    );
  }
}
