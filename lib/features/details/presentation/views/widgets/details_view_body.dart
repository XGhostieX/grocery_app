import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/elevated_btn.dart';
import '../../../../../core/widgets/heart_btn.dart';
import '../../../../../core/widgets/icon_btn.dart';
import '../../../../../core/widgets/price.dart';
import '../../../../../core/widgets/quantity_text_field.dart';

class DetailsViewBody extends StatefulWidget {
  const DetailsViewBody({super.key});

  @override
  State<DetailsViewBody> createState() => _DetailsViewBodyState();
}

class _DetailsViewBodyState extends State<DetailsViewBody> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
          width: double.infinity,
          height: MediaQuery.sizeOf(context).width * 0.4,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: 'Title', size: 25, isBold: true),
                  HeartBtn(),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Price(onSale: false, salePrice: 0, price: 10, textPrice: quantityController.text),
                  const CustomText(text: '/KG'),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: const CustomText(
                      text: 'Free Delivery',
                      isBold: true,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
        ),
        const Spacer(),
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Theme.of(context).cardColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(text: 'Total', size: 20, isBold: true, color: Colors.red.shade300),
                    Row(
                      children: [
                        Price(
                          onSale: false,
                          salePrice: 0,
                          price: 10,
                          textPrice: quantityController.text,
                        ),
                        const CustomText(text: '/KG'),
                      ],
                    ),
                  ],
                ),
                ElevatedBtn(title: 'Add to Cart', function: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
