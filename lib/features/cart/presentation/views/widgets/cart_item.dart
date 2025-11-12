import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/heart_btn.dart';
import '../../../../../core/widgets/icon_btn.dart';
import '../../../../../core/widgets/price.dart';
import '../../../../../core/widgets/quantity_text_field.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  final TextEditingController quantityController = TextEditingController();

  @override
  void initState() {
    quantityController.text = '1';
    super.initState();
  }

  @override
  void dispose() {
    quantityController.dispose();
    super.dispose();
  }

  void updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => GoRouter.of(context).push(AppRouter.kDetailsView),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CachedNetworkImage(
              imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
              width: MediaQuery.sizeOf(context).width * 0.25,
              height: MediaQuery.sizeOf(context).width * 0.25,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                const CustomText(text: 'Title', size: 20, isBold: true),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconBtn(
                      icon: Icons.remove_rounded,
                      function: () => setState(() {
                        if (quantityController.text == '1') {
                          return;
                        } else {
                          quantityController.text = '${int.parse(quantityController.text) - 1}';
                        }
                      }),
                      bgColor: Colors.red,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(width: 10),
                    QuantityTextField(controller: quantityController, size: 40, allowDot: false),
                    const SizedBox(width: 10),
                    IconBtn(
                      icon: Icons.add_rounded,
                      function: () => setState(() {
                        quantityController.text = '${int.parse(quantityController.text) + 1}';
                      }),
                      bgColor: Colors.green,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ],
            ),

            Column(
              children: [
                IconBtn(icon: CupertinoIcons.cart_badge_minus, function: () {}, color: Colors.red),
                const HeartBtn(),
                Price(onSale: false, salePrice: 0, price: 10, textPrice: quantityController.text),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
