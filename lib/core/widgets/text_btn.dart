import 'package:flutter/material.dart';

import 'custom_text.dart';

class TextBtn extends StatelessWidget {
  final String title;
  const TextBtn({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: const EdgeInsets.all(15)),
      onPressed: () {},
      child: CustomText(text: title, color: Colors.blue, size: 20),
    );
  }
}
