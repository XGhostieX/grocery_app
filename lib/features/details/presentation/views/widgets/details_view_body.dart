import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: 'https://i.ibb.co/F0s3FHQ/Apricots.png',
            // width: MediaQuery.sizeOf(context).width * 0.40,
            height: MediaQuery.sizeOf(context).width * 0.5,
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
