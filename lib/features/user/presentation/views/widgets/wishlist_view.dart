import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/functions/show_dialog.dart';
import '../../../../../core/widgets/custom_appbar.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/heart_btn.dart';
import '../../../../../core/widgets/icon_btn.dart';
import '../../../../../core/widgets/price.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Wishlist (6)',
        centerTitle: true,
        actions: [
          IconBtn(
            icon: IconlyLight.delete,
            function: () => showAwesomeDialog(
              context: context,
              type: DialogType.warning,
              title: 'Clear WishList!',
              desc: 'Your Wishlist Will be Cleared',
              function: () {},
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio:
              MediaQuery.sizeOf(context).width / (MediaQuery.sizeOf(context).height * 0.55),
        ),
        itemCount: 10,
        itemBuilder: (context, index) => InkWell(
          onTap: () => GoRouter.of(context).push(AppRouter.kDetailsView),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor.withValues(alpha: 0.9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
                  fit: BoxFit.cover,
                  // width: MediaQuery.sizeOf(context).width * 0.22,
                  height: MediaQuery.sizeOf(context).width * 0.25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconBtn(icon: IconlyLight.bag2, function: () {}),
                    const HeartBtn(),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: 'Cucumbers', size: 20, isBold: true),
                    Price(onSale: false, salePrice: 0, price: 1.99, textPrice: '0'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
