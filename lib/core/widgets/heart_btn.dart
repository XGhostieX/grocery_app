import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HeartBtn extends StatelessWidget {
  const HeartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: const Icon(IconlyLight.heart));
  }
}
