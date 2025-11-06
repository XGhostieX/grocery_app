import 'package:auto_hide_keyboard/auto_hide_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../../core/widgets/custom_appbar.dart';
import 'product_item.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'All Products',
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(IconlyBold.bag2)),
          IconButton(onPressed: () {}, icon: const Icon(IconlyBold.heart)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10).copyWith(bottom: 5),
            child: AutoHideKeyboard(
              child: TextField(
                controller: searchController,
                onChanged: (value) => setState(() {}),
                decoration: InputDecoration(
                  // contentPadding: const EdgeInsets.all(20),
                  prefixIcon: const Icon(IconlyLight.search),
                  hintText: 'Search Products',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.greenAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio:
                    MediaQuery.sizeOf(context).width / (MediaQuery.sizeOf(context).height * 0.65),
              ),
              itemCount: 10,
              itemBuilder: (context, index) => const ProductItem(),
            ),
          ),
        ],
      ),
    );
  }
}
