import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/functions/show_dialog.dart';
import '../../../../../core/widgets/custom_appbar.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/icon_btn.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'History (10)',
        centerTitle: true,
        actions: [
          IconBtn(
            icon: IconlyLight.delete,
            function: () => showAwesomeDialog(
              context: context,
              type: DialogType.warning,
              title: 'Clear History!',
              desc: 'Your History Will be Cleared',
              function: () {},
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: CachedNetworkImage(
            imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
            fit: BoxFit.cover,
            // width: MediaQuery.sizeOf(context).width * 0.22,
            // height: MediaQuery.sizeOf(context).width * 0.25,
          ),
          title: const CustomText(text: 'Title', size: 18, isBold: true),
          subtitle: const CustomText(text: '\$12.99', size: 15),
          trailing: IconBtn(
            icon: Icons.add_rounded,
            function: () {},
            bgColor: Colors.green,
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          onTap: () => GoRouter.of(context).push(AppRouter.kDetailsView),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 5),
        itemCount: 10,
      ),
    );
  }
}
